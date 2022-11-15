<html>
    <head>
        <title>Form PHP</title>
    </head>

    <body>
        <form method="post" action="hasil.php">
            <label>Nama:</label>
            <input type="text" name="nama"></input>
            <br>
            <label>Tanggal Lahir:</label>
            <input type="date" name="tgl"></input>
            <br>
            <label>Alamat:</label>
            <textarea name="alamat"></textarea>
            <br>
            <label>Jenis Kelamin:</label>
            <select name="jk">
                <option>Pilih</option>
                <option value="Laki-Laki">Laki-laki</option>
                <option value="Perempuan">Perempuan</option>
            </select>
            <br>
            <input type="submit" value="Simpan"></input>
        </form>
    </body>
</html>