<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>作品登録ページ</title>
    <!-- Bootstrapの読み込み -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- googlefontsの読み込み -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300&display=swap" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>

<body>


    <legend>登録用ページ</legend>
    <a href="item_read.php">登録一覧</a><br>
    <br>
    <a href="index.php">ショップをみる</a>
    <form action="item_create.php" method="post" enctype="multipart/form-data">
        <fieldset>
            <div class="record">
                <div class="formItem">
                    <label>画像を選択 <br>
                        <input type="file" name="image" accept="image/*">
                    </label>
                </div>
                <div class="formItem">
                    <label>
                        作品名<br> <input type="text" name="title" placeholder="さくひん名を入力" autocomplete=”off”>
                    </label>
                </div>
                <div class="formItem">
                    <label for="">作品の説明<br>
                        <textarea name="description" rows="4" cols="40"></textarea>
                    </label>
                </div>
                <div class="formItem">
                    <label for="">
                        素材<input type="text" name="material" placeholder="そざいを入力" autocomplete=”off”>
                    </label>
                </div>
                <div class="formItem">
                    <label for="">
                        制作日 <input type="date" name="production_date">
                    </label>
                </div>
                <div class="formItem">
                    <label for="">
                        制作した年齢 <input type="number" name="production_age">
                    </label>
                </div>
                <div class="formItem">
                    <label for="">
                        金額 <input type="text" name="value" autocomplete=”off”>
                    </label>
                </div>
                <button class="btn">登録</button>
            </div>
        </fieldset>
    </form>
</body>

</html>