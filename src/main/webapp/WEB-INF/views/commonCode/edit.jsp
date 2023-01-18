<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="paramAction"  />
<c:set var="statusDisabled" value="" />
<c:set var="statusReadonly" value="" />
<c:set var="nextAction" value="" />
<c:set var="buttonAction" value="" />

<c:choose>
	<c:when test='${paramAction == "read"}'>
		<c:set var="statusDisabled"  />
		<c:set var="statusReadonly"  />
		<c:set var="nextAction"  />
		<c:set var="buttonAction"  />
	</c:when>
	<c:when test='${paramAction == "update"}'>
		<c:set var="statusReadonly" value="" />
		<c:set var="nextAction"  />
		<c:set var="buttonAction"  />
	</c:when>
	<c:otherwise>
		<c:set var="statusReadonly" value="" />
		<c:set var="nextAction"  />
		<c:set var="buttonAction"  />
	</c:otherwise>
</c:choose>

<input type="hidden" name="PARENT_COMMONCODE_ID"
	>
<div class="form-group form-row">
	<div class="col">
		<label>코드 ID</label> <input class="form-control" type="text"
			name="COMMONCODE_ID" 
			placeholder="TEMPORORY_COMMONCODE" required ${statusReadonly } />
		<div class="invalid-tooltip">
			
		</div>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>코드명 </label> <input class="form-control" type="text"
			name="NAME"  placeholder="임시 코드명" required ${statusDisabled}/>
		<div class="invalid-tooltip">
			
		</div>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>표시 순서 <span class="text-muted">(<spring:message
					code="text.option" />)
		</span></label> <select class="form-control" name="ORDER_NUMBER" ${statusDisabled}>
			<c:forEach var="number" begin="1" end="5">
				<option 
					${resultMap.ORDER_NUMBER == number ? 'selected' : ''}>${number }</option>
			</c:forEach>
		</select>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>설명 <span class="text-muted">(<spring:message
					code="text.option" />)
		</span></label>
		<textarea class="form-control" rows="3" name="CONTENT"
			placeholder="<spring:message code="validation.inputValue' />"
			${statusDisabled}>${resultMap.CONTENT }</textarea>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="SYSTEM_CODE_YN"
				
				${resultMap.SYSTEM_CODE_YN == 'SYSTEM_CODE_YN_YES' ? 'checked' : ''}
				${statusDisabled}> <label class="form-check-label">시스템 코드
				여부</label>
		</div>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="USE_YN"
				 ${resultMap.USE_YN == 'USE_YN_YES' ? 'checked' : ''}
				${statusDisabled}> <label class="form-check-label">사용 여부</label>
		</div>
	</div>
</div>
<div class="row justify-content-between">
	<div class="col">
		<button class="btn btn-primary"
			>
			
		</button>
		<button class="btn btn-outline-info"
			>
			
		</button>
	</div>
	<div class="col text-right">
		<%-- <button type="button" class="btn btn-secondary" data-dismiss="modal">
			
		</button> --%>
	</div>
</div>
