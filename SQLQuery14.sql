--Which clinic/hospital has the most adjustments
SELECT 
    dimL.LocationName,
    SUM(FT.Adjustment) AS TotalAdjustments
FROM FactTable FT
JOIN dimLocation dimL
    ON FT.dimLocationPK = dimL.dimLocationPK
GROUP BY dimL.LocationName
ORDER BY TotalAdjustments ASC;


--How many doctors were affected
SELECT 
    COUNT(DISTINCT dimPhy.ProviderName) AS DoctorsAffected
FROM FactTable FT
JOIN dimPhysician dimPhy
    ON FT.dimPhysicianPK = dimPhy.dimPhysicianPK
WHERE FT.Adjustment <> 0;