<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="gijun/web/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="gijun/web/bootstrap/js/bootstrap.js"></script>

    <script type="text/javascript"
        src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#search").click(function () {        //search 시 ajax 실행
                $.ajax({                            //카카오 검색 요청
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book",
                    data: { query:$("#bookName").val() },
                    headers: { Authorization: "KaKaoAK ${2e8833d4b4ee970b125b88b88140efb8}"}
                })

                    .done(function (res) {  //검색 결과 담아줌
                        $("#coverimg").append("<img src='" + res.documents[0].thumbnail + "'/>");
                        $("h5").append(res.documents[0].title);
                        $(".card-text").append(res.documents[0].contents);
                        $(".card-author").append(res.documents[0].authors);
                        $(".card-publisher").append(res.documents[0].publisher);
                    })
            }
            )
        })
    
    </script>
</head>
<body>
    <br>
    <h1>도서 검색</h1>

    <input id="bookname" type="text">
    <button id="search">검색</button>

    <div style="height: 50px;"></div>


    <!-- 결과값 담는곳-->
    <div class="card mb-3" style="max-width: 60%; border: none;">
        <div class="row g-0">
            <div class="col-md-4" id="coverimg"></div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title"></h5>
                    <p class="card-author"></p>
                    <p class="card-publisher"></p>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>