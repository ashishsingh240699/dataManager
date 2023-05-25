package com.agami.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agami.entities.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
Optional<Admin> findAdminByUsername(String username);
}
