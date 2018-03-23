    <?php
        function mksafe($data){
            $data = trim($data);
            $data = strip_tags($data);
            $data = htmlspecialchars($data);
            $data = addslashes($data);
            return $data;
        }
        include 'configure.php';
        include 'header.php';
    ?>

        <div class="container text-center">
            <?php
                if(isset($_POST['submit'])){
                    if(empty($_POST['title']) OR empty($_POST['content'])){
                        echo "<p class='alert alert-danger'>Please Enter This Feilds</p>";
                    }else{
                        $title = mksafe($_POST['title']);
                        $content = mksafe($_POST['content']);
                        $date = date('y-m-d');
                        mysqli_query($db,"insert into posts(title, content, created_at) VALUES('$title', '$content', '$date')");
                        echo '<p class="alert alert-success">Success Adding</p>';
                    }
                }
            ?>

            <h1>Add New Post</h1>
            <form method="post" action="createPosts.php">
                <div class="form-group">
                    <input class="form-control" type="text" name="title" placeholder="Add Tittle" />
                </div>
                <div class="form-group">
                    <textarea class="form-control" rows="10" name="content" placeholder="Add Content"></textarea>
                </div>
                <input type="submit" name="submit" class="btn btn-lg btn-primary" value="Add Posts" />
            </form>

        </div><!-- /.container -->
    <br>
    <br>
    <?php
        include 'footer.php';
    ?>