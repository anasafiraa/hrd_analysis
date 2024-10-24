-- Alasan PHK paling umum?

SELECT TermReason, COUNT(*) AS Total_Terminations
FROM HRDataset_ana_DS44
WHERE Termd = 1
GROUP BY TermReason
ORDER BY Total_Terminations DESC;


-- Distribusi karyawan berdasarkan Departmen

SELECT Department, COUNT(*) AS JumlahKaryawan
FROM HRDataset_ana_DS44
GROUP BY Department
ORDER BY JumlahKaryawan DESC;


-- Apakah ada perbedaan gaji yang signifikan berdasarkan status pekerjaan (Aktif vs. Berhenti)?

SELECT EmploymentStatus, AVG(Salary) AS Average_Salary
FROM HRDataset_ana_DS44
GROUP BY EmploymentStatus;


-- Apakah Tingkat Keterlibatan Karyawan Berpengaruh terhadap Ketidakhadiran?

SELECT EngagementSurvey, AVG(Absences) AS Rata_rata_Absensi
FROM HRDataset_ana_DS44
GROUP BY EngagementSurvey
ORDER BY EngagementSurvey;

-- Bagaimana Kinerja Karyawan Berdasarkan Status Pernikahan?

SELECT MaritalDesc, AVG(PerfScoreID) AS Rata_rata_Skor_Kinerja
FROM HRDataset_ana_DS44
GROUP BY MaritalDesc
ORDER BY Rata_rata_Skor_Kinerja DESC;


-- Apa Faktor Terbesar yang Mempengaruhi Ketidakhadiran Karyawan?

SELECT EmpSatisfaction, EngagementSurvey, AVG(Absences) AS Rata_rata_Absensi
FROM HRDataset_ana_DS44
GROUP BY EmpSatisfaction, EngagementSurvey
ORDER BY Rata_rata_Absensi DESC;

-- Apakah Program Rekrutmen dari Sumber Tertentu Menghasilkan Karyawan yang Lebih Berkualitas?

SELECT RecruitmentSource, AVG(PerfScoreID) AS Rata_rata_Skor_Kinerja
FROM HRDataset_ana_DS44
GROUP BY RecruitmentSource
ORDER BY Rata_rata_Skor_Kinerja DESC;

--  Apa Perbedaan Kinerja antara Karyawan yang Mendapat Proyek Khusus dengan yang Tidak?

SELECT SpecialProjectsCount, AVG(PerfScoreID) AS Rata_rata_Skor_Kinerja
FROM HRDataset_ana_DS44
GROUP BY SpecialProjectsCount
ORDER BY SpecialProjectsCount DESC;
