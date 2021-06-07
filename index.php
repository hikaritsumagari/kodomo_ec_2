<?php

// DB接続情報
$dbn = 'mysql:dbname=gsacf_l05_05;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    echo json_encode(["db error" => "{$e->getMessage()}"]);
    exit();
}

//SQLで参照
$sql = 'SELECT * FROM item_table ORDER BY created_at DESC';

$stmt = $pdo->prepare($sql);
$status = $stmt->execute(); // SQLを実行 $statusに実行結果(取得したデータではない！)


// 失敗時にエラーを出力し，成功時は登録画面に戻る
if ($status == false) {
    $error = $stmt->errorInfo();  // データ登録失敗時にエラーを表示
    exit('sqlError:' . $error[2]);
} else {
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);  //fetchAllで全部とれる
    $output = '';
    //繰り返し文（foreach以外）でもOK
    foreach ($result as $record) {
        // var_dump($result);
        // exit;
        $output .= '<li class="border ecList">';
        $output .= '<img src="img/' . $record["image"] . '" width="300">';
        $output .= '<h2>' . $record["title"] . '</h2>';
        $output .= '<p class="fontSize">' . $record["material"] . ' / ' . $record["production_date"] . 'に制作 / ' . $record["production_age"] . '歳作品</p>';
        $output .= '<h3 class="right">' . $record["value"] . '円</h3>';
        $output .= '<p>' . $record["description"] . '</p>';
        $output .= '<button class="cartBtn"><i class="fas fa-shopping-cart fa-lg"></i>カートに入れる</button>';
        $output .= '</li>';
    }
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>こども作品EC</title>
    <!-- Bootstrapの読み込み -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <!-- googlefontsの読み込み -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Limelight&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300&display=swap" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>

<body>
    <header>
        <h3>こども作品EC</h3>
        <button class="ecBtn"><i class="fas fa-shopping-cart fa-lg"></i></button>
    </header>

    <main>
        <ul class="flexwrap">
            <!-- ここに<li>でphpデータが入る -->
            <?= $output ?>
        </ul>
    </main>


    <script src="https://kit.fontawesome.com/b28496ef11.js" crossorigin="anonymous"></script>
</body>

</html>