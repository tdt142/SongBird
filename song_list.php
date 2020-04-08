<?php
    require_once('database.php');

    // Get category ID
    if(!isset($category_id)) {
        $category_id = $_GET['category_id'];
        if (!isset($category_id)) {
            $category_id = 1;
        }
    }

    // Get name for current category
    $query = "SELECT * FROM categories
              WHERE categoryID = $category_id";
    $category = $db->query($query);
    $category = $category->fetch();
    $category_name = $category['categoryName'];

    // Get all categories
    $query = 'SELECT * FROM categories
              ORDER BY categoryID';
    $categories = $db->query($query);

    // Get products for selected category
    $query = "SELECT * FROM songs
              WHERE categoryID = $category_id
              ORDER BY songID";
    $songs = $db->query($query);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- the head section -->
<head>
    <title>Song Bird</title>
    <link rel="stylesheet" type="text/css" href="VS test 2.0/team_623.css" />
</head>

<!-- the body section -->
<body>
    <div id="page">

    <div id="header">
        <h1>Product Manager</h1>
    </div>

    <div id="main">

        <h1>Product List</h1>

        <div id="sidebar">
            <!-- display a list of categories -->
            <h2>Categories</h2>
            <ul class="nav">
            <?php foreach ($categories as $category) : ?>
                <li>
                <a href="?category_id=<?php echo $category['categoryID']; ?>">
                    <?php echo $category['categoryName']; ?>
                </a>
                </li>
            <?php endforeach; ?>
            </ul>
        </div>

        <div id="content">
            <!-- display a table of products -->
            <h2><?php echo $category_name; ?></h2>
            <table>
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th class="right">Price</th>
                    <th>&nbsp;</th>
                </tr>
                <?php foreach ($songs as $song) : ?>
                <tr>
                    <td><?php echo $song['songCode']; ?></td>
                    <td><?php echo $song['songName']; ?></td>
                    <td class="right"><?php echo $song['songSinger']; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>

    <div id="footer">
        <p>
            &copy; <?php echo date("Y"); ?> SongBird.
        </p>
    </div>

    </div><!-- end page -->
</body>
</html>