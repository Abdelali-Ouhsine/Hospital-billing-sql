SELECT 
    ISNULL(SUM(FT.Adjustment),0) AS [Total Credentialing Adjustments]
FROM FactTable FT
JOIN dimTransaction dimT
    ON FT.dimTransactionPK = dimT.dimTransactionPK
WHERE dimT.TransactionType = 'Credentialing';