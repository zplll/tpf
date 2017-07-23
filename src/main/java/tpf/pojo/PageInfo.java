package tpf.pojo;

import com.github.pagehelper.Page;

/**
 * Created by zipon on 2017/7/23.
 */
public class PageInfo {
    private boolean count;
    private int pageNum;
    private int pageSize;
    private int startRow;
    private int endRow;
    private long total;
    private int pages;
    private boolean reasonable;
    private boolean pageSizeZero;

    public PageInfo(Page page) {
        this.count = page.isCount();
        this.pageNum = page.getPageNum();
        this.pageSize = page.getPageSize();
        this.startRow = page.getStartRow();
        this.endRow = page.getEndRow();
        this.total = page.getTotal();
        this.pages = page.getPages();
        this.reasonable = page.getReasonable();
        this.pageSizeZero = page.getPageSizeZero();
    }

    public boolean isCount() {
        return count;
    }

    public void setCount(boolean count) {
        this.count = count;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getStartRow() {
        return startRow;
    }

    public void setStartRow(int startRow) {
        this.startRow = startRow;
    }

    public int getEndRow() {
        return endRow;
    }

    public void setEndRow(int endRow) {
        this.endRow = endRow;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public boolean isReasonable() {
        return reasonable;
    }

    public void setReasonable(boolean reasonable) {
        this.reasonable = reasonable;
    }

    public boolean isPageSizeZero() {
        return pageSizeZero;
    }

    public void setPageSizeZero(boolean pageSizeZero) {
        this.pageSizeZero = pageSizeZero;
    }

    @Override
    public String toString() {
        return "PageInfo{" +
                "count=" + count +
                ", pageNum=" + pageNum +
                ", pageSize=" + pageSize +
                ", startRow=" + startRow +
                ", endRow=" + endRow +
                ", total=" + total +
                ", pages=" + pages +
                ", reasonable=" + reasonable +
                ", pageSizeZero=" + pageSizeZero +
                '}';
    }
}
