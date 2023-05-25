package com.agami.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agami.entities.Report;

public interface ReportRepository extends JpaRepository<Report, Long> {

}
