<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Core/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <header class="my-4">
            <div class="my-4 px-3 py-2 text-danger rounded bg-danger bg-opacity-25">
                <h1>Quản trị Website</h1>
            </div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark rounded">
                <div class="container-fluid">
                <a class="navbar-brand fs-6" href="../admin">Trang chủ</a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../admin/category"
                        >Loại hàng</a
                        >
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../admin/product">Hàng hóa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../admin/user">Khách hàng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../admin/comment">Bình luận</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../admin/category/statistical">Thống kê</a>
                    </li>
                    </ul>
                </div>
                </div>
            </nav>
        </header>

        <div class='d-flex mt-4 justify-content-between align-items-center'>
            <h3><?= isset($_GET["filter"]) ? $categories[$_GET["filter"]-1]['name'] : "Danh sách sản phẩm " ?></h3>
            </a>
        </div>
        <form action="./product/delete" method="POST">
            <div class='my-4 d-flex align-items-center justify-content-between px-2'>
               <div class="d-flex align-items-center">
                    <div class='form-check'>
                        <input class='form-check-input' type='checkbox' value='' id='check-all' />
                        <label class='form-check-label' for='check-all'>
                            Chọn tất cả (<?= count($products)?>)
                        </label>
                    </div>
                    <select
                        class='checkbox-select-all-options form-select form-select-sm mx-4'
                        name='action'
                        aria-label='.form-select-lg example'
                        required
                    >
                        <option value='' selected>--Hành động--</option>
                        <option value='delete'>Xóa</option>
                    </select>
        
                    <button id='execute-btn' class='btn btn-primary btn-sm disabled'>Thực hiện</button>  
               </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle fs-6" data-bs-toggle="dropdown" aria-expanded="false" style="min-width: 100px">
                        Filter
                    </button>
                    <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="./product">
                                    Tất cả
                                </a>
                            </li> 
                        <?php foreach($categories as $category) : ?>
                            <li>
                                <a class="dropdown-item" href="./product?filter=<?= $category['id'] ?>">
                                    <?= $category['name'] ?>
                                </a>
                            </li> 
                        <?php endforeach?>
                    </ul>
                </div>
            </div>
            <table class="table align-middle">
                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">id</th>
                        <th scope="col">name</th>   
                        <th scope="col">price</th>   
                        <th scope="col">quantity</th>   
                        <th scope="col">discount</th>   
                        <th scope="col">image</th>   
                        <th scope="col">description</th>   
                        <th scope="col">view</th>   
                        <th scope="col">received_date</th>   
                        <th scope="col">special</th>   
                        <th scope="col">category_name</th>   
                        <th scope="col" colspan="2">
                            <a class="btn btn-primary w-100" href="./product/create" role="button">
                                    Thêm mới
                            </a>
                        </th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach($products as $product) : ?>
                        <tr>
                            <td>
                                <div class='form-check'>
                                    <input class='form-check-input' type='checkbox' name='productIds[]' value='<?=$product['id']?>' />
                                </div>
                            </td>
                            <td scope="row"><?=$product['id']?></td>
                            <td class="name_ellipsis">
                                <?=$product['name']?>
                            </td>
                            <td><?=$product['price']?>$</td>
                            <td><?=$product['quantity']?></td>
                            <td><?=$product['discount']?>%</td>
                            <td width="100px">
                                <img class="w-100" src="<?=$product['image']?>" alt="">
                            </td>
                            <td class="name_ellipsis"><?=$product['description']?></td>
                            <td><?=$product['view']?></td>
                            <td><?=$product['received_date']?></td>
                            <td><?=$product['special']?></td>
                            <td><?=$product['category_name']?></td>
                            <td>
                                <a class="btn btn-success" 
                                href="./product/update?id=<?=$product['id']?>" role="button">
                                    Sửa
                                </a>
                            </td>
                            <td>
                                <a class="btn btn-danger" href="./product/delete?id=<?=$product['id']?>" role="button">
                                    Xóa
                                </a>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </form>
    </div>

    <script>
        const checkAll = document.querySelector('#check-all'); 
        const productItemCheckbox = document.querySelectorAll('input[name="productIds[]"]'); 
        const executeBtn = document.querySelector('#execute-btn');
        const containerForm = document.forms['container-form']; 

        //Checkbox all changed 
        checkAll.onchange = () => { 
            let isCheckedAll = checkAll.checked; 
            productItemCheckbox.forEach(courseItem => { 
                courseItem.checked = isCheckedAll;
            })
            renderCheckedSubmitBtn();
        }

        // Course item checkbox changed 
        productItemCheckbox.forEach(courseItem => {
            courseItem.onchange = () => { 
                let isCheckedAll = productItemCheckbox.length === document.querySelectorAll('input[name="productIds[]"]:checked').length; 
                checkAll.checked = isCheckedAll;
                renderCheckedSubmitBtn(); 
            } 
        })
        
        function renderCheckedSubmitBtn() { 
            let checkedCount = document.querySelectorAll('input[name="productIds[]"]:checked').length; 
            checkedCount > 0 ? executeBtn.classList.remove('disabled') : executeBtn.classList.add('disabled'); 
        }
    </script>
</body>
</html>
