package uy.com.calendario.business.dtos;

import java.sql.Timestamp;

public record EventDto(
        Long userId,
        String name,
        String description,
        Timestamp startDate,
        Timestamp endDate,
        int period
) {}
