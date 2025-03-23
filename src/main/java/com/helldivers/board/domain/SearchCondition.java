package com.helldivers.board.domain;

import org.springframework.web.util.UriComponentsBuilder;

import static java.lang.Math.*;
import static java.util.Objects.requireNonNullElse;

public class SearchCondition {
    private Integer page = 1;
    private Integer pageSize = DEFAULT_PAGE_SIZE;

//    private Integer  offset;

    public static final int MIN_PAGE_SIZE = 5;
    public static final int DEFAULT_PAGE_SIZE = 10;
    public static final int MAX_PAGE_SIZE = 50;

    public SearchCondition() {
    }

    public SearchCondition(Integer page, Integer pageSize) {
        this.page = page;
        this.pageSize = pageSize;
    }


    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = requireNonNullElse(pageSize, DEFAULT_PAGE_SIZE);

        // MIN_PAGE_SIZE <= pageSize <= MAX_PAGE_SIZE
        this.pageSize = max(MIN_PAGE_SIZE, min(this.pageSize, MAX_PAGE_SIZE));
    }

    public Integer getOffset() {
        return (page - 1) * pageSize;
    }


}