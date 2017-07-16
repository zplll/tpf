package tpf.pojo;

/**
 * Created by Administrator on 2017/3/8.
 */
public enum CodeEnum {
        SUCCESS("0"),
        ERROR("1");

    private String code;
    CodeEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
