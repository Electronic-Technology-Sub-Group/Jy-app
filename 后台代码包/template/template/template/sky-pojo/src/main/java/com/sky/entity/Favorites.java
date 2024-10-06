package com.sky.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Favorites implements Serializable {

    private int favoriteId;

    private Long userId;

    private LocalDateTime favoriteDate = LocalDateTime.now();

    private int sentenceId;



}

