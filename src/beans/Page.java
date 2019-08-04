package beans;

import sun.dc.pr.PRError;

import java.util.List;

public class Page<T> {
    private int pageNo;
    public static  final int PAGE_SIZE=4;
    private int totalRecord;
    private List<T> list;


    public int getPageNo() {
        if(pageNo<1){
            return 1;
        }else if(pageNo>getTotalPageNo()){
            return getTotalPageNo();
        }
        else {
            return pageNo;
        }

    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getTotalPageNo(){
        if(totalRecord%PAGE_SIZE==0){
            return totalRecord/PAGE_SIZE;
        }
        else{
            return totalRecord/PAGE_SIZE+1;
        }
    }
    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
