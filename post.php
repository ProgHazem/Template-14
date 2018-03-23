<?php
include 'configure.php';
include 'header.php';
?>

    <div class="container">
        <?php
        if(isset($_GET['id']) AND $_GET['id']>0) {
            $posts = mysqli_query($db, "select * from Posts WHERE id='$_GET[id]'");
            if (mysqli_num_rows($posts) > 0) {
                $post = mysqli_fetch_array($posts);
                echo "<article>
                         <a href='post.php?id=$post[id]'><h1>$post[title]</h1></a>
                         <p class='text-muted'>$post[created_at]</p>
                         <p>$post[content]</p>
                     </article>";

            } else {
                echo "<p class='alert alert-info'>No Posts</p>";
            }
        }
        ?>
    </div><!-- /.container -->
<?php
include 'footer.php';
?>