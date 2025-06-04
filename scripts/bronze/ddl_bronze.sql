IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO

IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
GO

IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
GO

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
GO

IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
GO

IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
GO


CREATE TABLE bronze.crm_cust_info(
	cst_id INT,
	cst_key NVARCHAR(20),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NCHAR(5),  -- 'S' ou 'M'
	cst_gndr NCHAR(1),            -- 'M' ou 'F'
	cst_create_date DATE
)
GO



CREATE TABLE bronze.crm_prd_info(
    prd_id INT,
    prd_key NVARCHAR(30),
    prd_nm NVARCHAR(100),
    prd_cost DECIMAL(10,2),           -- Custo pode ser decimal, com 2 casas decimais
    prd_line CHAR(5),                 -- Linha do produto (ex: 'R' ou 'S')
    prd_start_dt DATE,
    prd_end_dt DATE
)
GO
CREATE TABLE bronze.crm_sales_details(
    sls_ord_num NVARCHAR(20),  -- Número do pedido
    sls_prd_key NVARCHAR(30),              -- Código do produto
    sls_cust_id INT,                       -- ID do cliente
    sls_order_dt DATE,                     -- Data do pedido
    sls_ship_dt DATE,                      -- Data de envio
    sls_due_dt DATE,                       -- Data de entrega prevista
    sls_sales DECIMAL(10,2),               -- Valor total da venda
    sls_quantity INT,                      -- Quantidade vendida
    sls_price DECIMAL(10,2)                -- Preço unitário
)

GO

CREATE TABLE bronze.erp_cust_az12(
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
)

GO

CREATE TABLE bronze.erp_loc_a101(
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
)

GO

CREATE TABLE bronze.erp_px_cat_g1v2(
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
)
