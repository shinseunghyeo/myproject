        window.onload = function(){
            frm_join.id_btn.addEventListener("click", idCheck);

            frm_join.addEventListener("submit", function(e){
                //입력값의 유효성검사 통과여부:valid
                let valid = false;

                //아이디: 아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다.
                const regExp_id = /^(?=.*[0-9])[A-Za-z0-9~!@#$%^()+|=]{8,10}$/;
                //비밀번호: 비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.
                const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=])[A-Za-z0-9~!@#$%^()+|=]{8,16}$/;
                //전화번호: 전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다
                const regExp_phone =/^010-\d{4}-\d{4}$/;

                if(frm_join.id.value.length == 0 || !regExp_id.test(frm_join.id.value)){
                //입력값이 없거나 잘못된 입력값을 id 입력창에 입력 후 엔터키를 누른 경우
                    idCheck();

                }else if(frm_join.pw.value.length == 0){
                    alert("비밀번호가 입력되지 않았습니다");
                    frm_join.pw.focus();

                }else if(!regExp_pw.test(frm_join.pw.value)){
                    alert("비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.");
                    frm_join.pw.focus();

                }else if(frm_join.name.value.length == 0){
                    alert("이름이 입력되지 않았습니다");
                    frm_join.name.focus();

                }else if(frm_join.phone.value.length == 0){
                    alert("전화번호가 입력되지 않았습니다");
                    frm_join.phone.focus();

                }else if(!regExp_phone.test(frm_join.phone.value)){
                    alert("전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다");
                    frm_join.phone.focus();

                }else if(frm_join.email.value.length == 0){
                    alert("이메일이 입력되지 않았습니다");
                    frm_join.email.focus();

                }else{//입력값이 모두 정상적으로 입력되어진 경우
                    valid = true;
                    alert("모든 입력값이 정상적으로 입력되었습니다");
                }
                
                if(!valid){
                    e.preventDefault();
                    e.stopPropagation();
                }
            });

        };

        function idCheck(){
                const regExp_id = /^(?=.*[0-9])[A-Za-z0-9~!@#$%^()+|=]{8,10}$/;

                if(frm_join.id.value.length == 0){
                    alert("아이디가 입력되지 않았습니다");
                    frm_join.id.focus();

                }else if(!regExp_id.test(frm_join.id.value)){
                    alert("아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다");
                    frm_join.id.focus();

                }else{
                    frm_join.pw.focus();
                }

            }