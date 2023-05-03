<?php	
require'..\ppl\config\functions.php';

session_start();	
// cek session
if (!isset($_SESSION["login"])){
    header("Location: login.php");
}


$username=$_SESSION["username"];
$tabel=$_SESSION["tabel"];

// koneksi ke dbms

// ambil data di url
$id=$_GET["id"];
// querry data admin berdasar id
$adm =query("SELECT * FROM petani WHERE id = $id")[0];
// var_dump($adm["nomorhp"]);


// cek apakah submit telah ditekan
if(isset($_POST["submit"])){

// cek apakah data berhasil ditambahkan atau tidak llalu kembali ke halaman akun
    // var_dump(mysqli_affected_rows($conn));
    if (ubahpetani($_POST)>0){
        echo" <script>
            alert('data berhasil diubah!');
            document.location.href = 'akun.php'
        </script>
        ";

    }else{
        echo" <script>
        alert('data gagal diubah!');
        document.location.href = 'akun.php'
        </script>
        ";
    }

}

?>
<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
        <h3 class="mb-4"><a href="akun.php">Kembali</a></h3>
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(assets/images/pexels-tomas-anunziata-3876417.jpg);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
       
			      			<h3 class="mb-4">Ubah data</h3>
			      		</div>
								
			      	</div>

							<form action="" class="signin-form" method="post" enctype="multipart/form-data">
							<input type="hidden" name="id" value="<?= $adm["id"];?>">
							<input type="hidden" name="gambarlama" value="<?=$adm["fotoprofil"];?>">

							<div class="form-group mb-3">
							<label for="fotoprofil">Foto Profil : </label><br>
							<img src="fotoprofil/<?=$adm["fotoprofil"];?>" alt="" width="90"><br>
							<input type="file" name="fotoprofil" id="fotoprofil" >
							</div>


			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Username</label>
			      			<input type="text" class="form-control" name="username" id="username" placeholder="Username" required value="<?=$adm["username"]?>">
			      		</div>
                <div class="form-group mb-3">
			      			<label class="label" for="name">Nama</label>
			      			<input type="text" class="form-control" name="nama" id="nama" placeholder="nama" required value="<?=$adm["nama"]?>">
			      		</div>
                <div class="form-group mb-3">
			      			<label class="label" for="email">Email</label>
			      			<input type="text" class="form-control" name="email" id="email" placeholder="email" required value="<?=$adm["email"]?>">
			      		</div>
                <div class="form-group mb-3">
			      			<label class="label" for="nomorhp">Nomor Handphone</label>
			      			<input type="text" class="form-control" name="nomorhp" id="nomorhp" placeholder="nomorhp" required value="<?=$adm["nomorhp"]?>">
			      		</div>

                
		            <div class="form-group mb-3">
		            	<label class="label" for="password">Password</label>
		              <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
		            </div>
                <div class="form-group mb-3">
		            	<label class="label" for="password2">Konfirmasi Password</label>
		              <input type="password" class="form-control" name="password2" id="password2" placeholder="Konfirmasi Password" required>
		            </div>
                <div class="form-group mb-3" >
			      			<label class="label" for="alamat">Alamat</label>
			      			<input type="text" class="form-control" name="alamat" id="alamat" placeholder="alamat" required value="<?=$adm["alamat"]?>">
			      		</div>
                <div class="form-group mb-3">
                  <label for="jeniskelamin">Jenis Kelamin :</label>
                  <select name="jeniskelamin" id="jeniskelamin"required>
                          <option value="<?=$adm["jeniskelamin"]?>"><?=$adm["jeniskelamin"]?></option><option value="Laki laki">Laki laki</option>
                          <option value="Perempuan">Perempuan</option>
                  </select>
                </div>
                


		            <div class="form-group">
		            	<button type="submit" name="submit" class="form-control btn btn-primary rounded submit px-3" >Ubah Data</button>
                    
		            </div>
                
		          </form>

		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

