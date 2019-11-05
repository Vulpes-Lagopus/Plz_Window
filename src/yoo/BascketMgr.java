package yoo;

import java.util.Hashtable;
import yoo.*;

public class BascketMgr {

    private Hashtable hBasc = new Hashtable();

    public BascketMgr() {
    }
    
	/*장바구니에 상품을 등록시키는 메소드*/
    public void addBascket(BascketDTO basc) {

		//OrderBean으로부터 선택한 상품의 상품번호와 수량을 가져온다.
        String basc_number = basc.getBasc_number();
        int basc_quantity = basc.getBasc_quantity();

		//선택한 상품수량이 적어도 1개 이상일 경우 실행된다.
        if (basc_quantity > 0) {
            if (hBasc.containsKey(basc_number)) { //선택한 상품이 이미 장바구니에 있는지 검사

			    //이미 장바구니에 있는 상품이라면 장바구니에 있는 상품의 수량을 가져온다.
                BascketDTO tempBasc = (BascketDTO) hBasc.get(basc_number);

				//장바구니에 있는 상품수량에 현재 신청한 수량을 더해준다.
                basc_quantity += tempBasc.getBasc_quantity();
                tempBasc.setBasc_quantity(basc_quantity);	//총수량을 저장
                hBasc.put(basc_number, tempBasc);//장바구니를 새로이 저장
            } else {
                 //중복된 상품이 아니라면 장바구니에 새롭게 상품을 추가
                hBasc.put(basc_number, basc);
            }
        }
    }
   
    /*장바구니에 등록된 상품리스트를 알아보기*/
    public Hashtable getBascketList() {
        return hBasc;
    }
    
	/*장바구니의 정보를 수정하기 위해서 장바구니 정보를 새로 입력 */
    public void updateBascket(BascketDTO basc) {
        String basc_number = basc.getBasc_number();
        hBasc.put(basc_number, basc);
    }

    /*해쉬테이블에 저장된 장바구니의 목록을 지움 */
    public void deleteBascket(BascketDTO basc) {
    	String basc_number = basc.getBasc_number();
        hBasc.remove(basc_number, basc);
    }

}