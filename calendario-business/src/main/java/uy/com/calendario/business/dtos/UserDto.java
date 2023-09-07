package uy.com.calendario.business.dtos;

public record UserDto(
        Long id,
        int username,
        String email
) {}
