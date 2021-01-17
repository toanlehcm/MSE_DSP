# matlab

## 01/12/2020

    function[x,n] = complex_val(sigma, omega0, n1, n2)
    n = [n1:n2]; 
    x = exp((sigma + j * omega0).^n);
    hs = stemp(n, x, 'm', 'filled');
    set(hs, 'markersize', 4);
    xlabel('n');
    ylabel('x(n)');
    title('demo');
    end

## 3/12

### a. x(n) = 2d(n + 2) - d(n - 4) //-5 <= n <= 5//vector*vector

### b. x(n) = n[u(n) - u(n - 10)] + 10e^-0.3(n-10).[u(n-10) u(n-20)] //0 <= n <= 20 //vector*vector

        n = [0:20];
        K>> x1 = n*(stepseq(0, 0, 20) - stepseq(10, 0, 20));
        K>> x2 = 10*exp(-0.3*(n-10))*(stepseq(10,0,20) - stepseq(20, 0, 20));
        K>> x = sigadd(x1, n, x2, n);
        //
        x1 = [1 2 3]; n1 = [-2 -1 0];
        >> x2 = [2 4 6]; n2= [-2 -1 0];
        >> sigadd(x1, n1, x2, n2);
        >> max(n)
        //
        x1 = [1 2 3]; n1 = [-2 -1 0];
        >> x2 = [2 4 6]; n2= [-2 -1 0];
        >> sigadd(x1, n1, x2, n2);
        >> max(n)

        ans =

            5

        >> x1

        x1 =

            1     2     3

        >> x1 = n*(stepseq(0, 0, 20) - stepseq(10, 0, 20));
        Error using  * 
        Incorrect dimensions for matrix multiplication. Check that the number of columns in the first matrix matches the number of
        rows in the second matrix. To perform elementwise multiplication, use '.*'.
        
        >> x2 = 10 * exp(-0.3*(n-10)).*(stepseq(10, 0, 20) - stepseq(20, 0, 20));
        Matrix dimensions must agree.
        
        >> x1 = n*(stepseq(0, 0, 20) - stepseq(10, 0, 20));

### c. x(n) = cos(0.04.pi.n) +  0.2w(n), 0 <= n <= 50, where w(n) is a gaussian random sequence with zero mean & unit variance

         n = [0:50]

        n =

        Columns 1 through 21

            0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20

        Columns 22 through 42

            21    22    23    24    25    26    27    28    29    30    31    32    33    34    35    36    37    38    39    40    41

        Columns 43 through 51

            42    43    44    45    46    47    48    49    50

        >> x = cos(0.04*pi*n) =0.2*rand(n);
        x = cos(0.04*pi*n) =0.2*rand(n);
                            ↑
        Error: Incorrect use of '=' operator. To assign a value to a variable, use '='. To compare values for equality, use '=='.
        
        >> x = cos(0.04*pi*n) + 0.2*randn(n);
        >> stem(n, x)
        Error using stem (line 43)
        Inputs must be 2-D.
        
        >> x = cos(0.04*pi*n) + 0.2*randn(size(n));
        >> stem(n, x)

### d. x~(n) = {...5,4,3,2,1,5,4,3,2,1,5,4,3,2,1,...} -10 <= n <= 9 (-5-4-3-2-1012345) x[]

        - sigadd(x1, n1, x2, n2)
        - sigmult(x1, n1, x2, n2)
        - sigshift(x, m, k)
        - sigfold(x, n)

    n = [-10:9]

    n =

    -10    -9    -8    -7    -6    -5    -4    -3    -2    -1     0     1     2     3     4     5     6     7     8     9

    >> x= [5 4 3 2 1]

    x =

        5     4     3     2     1

    >> y = x*.*ones(1:P)
    y = x*.*ones(1:P)
        ↑
    Error: Invalid use of operator.
    
    >> periodic(x, P)
    Undefined function or variable 'P'.
    
    >> P = 4

    P =

        4

    >> periodic(x, P)

## 15/12

    zeros create an array: <https://www.mathworks.com/help/matlab/ref/zeros.html#:~:text=X%20%3D%20zeros%20returns%20the%20scalar,by%2D%20n%20matrix%20of%20zeros.&text=For%20example%2C%20zeros(2%2C,sz%20defines%20size(X)%20.>

## 23/12

### Một số lệnh và hàm của MATLAB

    Phần này đưa ra danh mục các lệnh các hàm của MATLAB có thể sử dụng trong phần thí nghiệm này. Để biết cụ thể hơn về chức năng của hàm và cú pháp của lệnh gọi hàm, gõ lệnh help kèm theo tên của hàm tại cửa số lệnh của MATLAB.

    zeros: tạo một ma trận với toàn bộ các phần tử có giá trị bằng 0.

    ones: tạo một ma trận với toàn bộ các phần tử có giá trị bằng 1.

    rand: tạo một ma trận với các phần tử nhận các giá trị ngẫu nhiên được phân bố đều trong khoảng từ 0 đến 1.

    randn: tạo một ma trận với các phần tử nhận các giá trị ngẫu nhiên theo phân bố Gauss có giá trị trung bình bằng 0, phương sai bằng 1.

    min: trả về giá trị nhỏ nhất trong một ma trận.

    max: trả về giá trị lớn nhất trong một ma trận.

    fliplr: lộn ngược lại thứ tự các phần tử trong một ma trận theo hướng xuất phát từ phải qua trái trở thành từ trái qua phải.

    plot và stem: vẽ đồ thị của một dãy số, plot để thể hiện dạng liên tục, stem để thể hiện dạng rời rạc, thường sử dụng hàm stem để vẽ tín hiệu ở miền n.

    conv: trả về tích chập của 2 vector.

    filter: trả về đáp ứng theo thời gian của hệ thống được mô tả bởi một phương trình sai phân tuyến tính hệ số hằng.

### Lệnh FILTER: <http://doc.edu.vn/tai-lieu/khao-sat-ung-dung-matlab-trong-dieu-khien-tu-dong-nhom-lenh-ve-dap-ung-tan-so-69262/>

    a) Công dụng:

    Lọc dữ liệu với đáp ứng xung không xác định hay đáp ứng xung xác định.

    b) Cú pháp:

    y = filter(b,a,X)

    [y,zf] = filter(b,a,X)

    [y,zf] = filter(b,a,X,zi)

    y = filter(b,a,X,zi,dim)

    [.] = filter(b,a,X,[ ],dim)

    c) Giải thích:

    Lệnh fiter lọc dữ liệu tuần tự sử dụng bộ lọc số cho các ngõ vào thực và phức.

    y = filter(b,a,X) lọc dữ liệu trong vector X với bộ lọc được mô tả bởi vector hệ số tử số b và vector hệ số mẫu số a. Nếu a(1) không bằng 1, bộ lọc sẽ chuẩn hóa hệ số lọc bởi a(1). Nếu a(1) bằng 0 thì sẽ báo lỗi.

    Nếu X là một ma trận, bộ lọc sẽ thực hiện trên các cột của X. Nếu X là một mảng đa chiều, bộ lọc sẽ thực hiện theo chiều duy nhất.

    [y,zf] = filter(b,a,X) tạo ma trận điều kiện cuối cùng zf của bộ trễ. Ngõ ra zf là một vector của max(size(a),size(b)) hoặc một tập hợp các vector với mỗi vector là một cột của X.

## 27/12

    digital signal processing proakis pdf
    moi chuong 1 bai co ban, 4 bai co ban, 4 bai nang cao.
    chuong 2 den 5.
