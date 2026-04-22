create or alter procedure bronze.load_bronze as
begin
	truncate table bronze.crm_cust_info;
	bulk insert bronze.crm_cust_info
	from 'C:\Users\Phyll\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	with
	(
		FIELDTERMINATOR = ',',
		FIRSTROW = 2,
		tablock
	);

	truncate table bronze.crm_pro_info;
	bulk insert bronze.crm_pro_info
	from 'C:\Users\Phyll\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	with
	(
		FIELDTERMINATOR = ',',
		FIRSTROW = 2,
		tablock
	);

	truncate table bronze.crm_sales_details;
	bulk insert bronze.crm_sales_details
	from 'C:\Users\Phyll\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	with
	(
		FIELDTERMINATOR = ',',
		FIRSTROW = 2,
		tablock
	);

	truncate table bronze.erp_cast_az12;
	bulk insert bronze.erp_cast_az12
	from 'C:\Users\Phyll\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	with
	(
		FIELDTERMINATOR = ',',
		FIRSTROW = 2,
		tablock
	);

	truncate table bronze.erp_loc_a101;
	bulk insert bronze.erp_loc_a101
	from 'C:\Users\Phyll\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	with
	(
		FIELDTERMINATOR = ',',
		FIRSTROW = 2,
		tablock
	);

	truncate table bronze.erp_px_cat_g1v2;
	bulk insert bronze.erp_px_cat_g1v2
	from 'C:\Users\Phyll\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	with
	(
		fieldterminator = ',',
		firstrow = 2,
		tablock
	);
end
