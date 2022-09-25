<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home_page</title>
    <link rel="stylesheet" href="./home_page_style.css">
</head>
<body>

<?php 
$id = $_GET['id'];

require_once '../connect.php';

$check_id = "select * from admin where id = '$id'";
$id_admin = mysqli_query($connect, $check_id);
$id_admin_array = mysqli_fetch_array($id_admin);

$admin_name = $id_admin_array['name'];
?>


<div id="wrapper">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <h2><a href="./home_page.php?id=<?php echo $id ?>">
                    TRANG CHỦ
                </a></h2>
            </li>
            <li>
                <h3><a href="./staff/staff.php?id=<?php echo $id ?>" class = "sidebar_link">quản lý nhân viên</a></h3>
            </li>
            <li>
                <h3><a href="#" class = "sidebar_link"></a></h3>
            </li>
            <li>
                <h3><a href="#" class = "sidebar_link"></a></h3>
            </li>
            <li>
                <h3><a href="#" class = "sidebar_link"></a></h3>
            </li>
            <li>
                <h3><a href="#" class = "sidebar_link"></a></h3>
            </li>
            <li>
                <h3><a href="#" class = "sidebar_link"></a></h3>
            </li>
            <li>
                <h3><a href="#" class = "sidebar_link"></a></h3>
            </li>
        </ul>
    </div>
    

    <!--main -->
    <div class="main">
        <div class="header">
            <h2> <a href="../index.php" class="header_link"> ĐĂNG XUẤT</a></h2>
        </div>

        <div class="show_admin">
            <div class="admin_name">
                <p class="admin">ID kho: <span style="font-weight: 700;"><?php echo $id ?></span></p>
                <p class="admin">Admin: <span style="font-weight: 700;"><?php echo $admin_name ?></span></p>
            </div>

            <button class="change_infor_admin"><a href="./change_infor_admin/change_infor_admin.php?id=<?php echo $id ?>" class="change_infor_admin_link">sửa</a></button>
        </div>
    </div>

</div>

    
</body>
</html>