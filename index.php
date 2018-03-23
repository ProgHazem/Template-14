<?php
include 'configure.php';
include 'header.php';
?>

        <div class="container">

            <div class="starter-template">
                <h1>Content Of Posts</h1>
                <p class="lead">Hello From Anywhere<br>Welcome♥♥♥</p>
            </div>
                <?php
                 $posts = mysqli_query($db, 'select * from Posts ORDER BY  created_at DESC ');
                 if(mysqli_num_rows($posts)>0) {
                     while ($post = mysqli_fetch_array($posts)) {
                         echo "
                            <article>
                                <a href='post.php?id=$post[id]'>
                                    <h1>$post[title]</h1>
                                 </a>
                                 <p class='text-muted'>
                                    $post[created_at]
                                 </p>
                                 <p>
                                    $post[content]
                                 </p>
                             </article>
                        ";
                     }
                 }else{
                     echo "<p class='alert alert-info'>No Posts</p>";
                 }
                ?>
        </div><!-- /.container -->
<?php
include 'footer.php';
?>