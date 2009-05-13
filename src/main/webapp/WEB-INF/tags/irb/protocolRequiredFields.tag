<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<c:set var="protocolDocumentAttributes" value="${DataDictionary.ProtocolDocument.attributes}" />
<c:set var="protocolAttributes" value="${DataDictionary.Protocol.attributes}" />
<c:set var="textAreaFieldName" value="document.protocolList[0].title" />
<c:set var="action" value="protocol" />
<c:set var="nonEmpFlag" value="false" />
<c:set var="className" value="org.kuali.kra.protocol.document.ProtocolDocument" />
<c:set var="readOnly" value="${!KualiForm.protocolHelper.modifyProtocol || KualiForm.lookupHelper.viewOnly}" scope = "request"/>

<kul:tab tabTitle="Required Fields for Saving Document" defaultOpen="true" tabErrorKey="document.protocolList[0].principalInvestigatorId,document.protocolList[0].protocolTypeCode,document.protocolList[0].title,document.protocolList[0].leadUnitNumber,document.protocolHelper.personId,document.protocolList[0].protocolTypeCode*,principalInvestigator*,protocolHelper.principalInvestigator*,document.protocolList[0].title*,protocolHelper.leadUnitNumber*,document.ProtocolTypeCode*,document.activityTypeCode*,document.title" >
	<div class="tab-container" align="center">
    	<h3>
    		<span class="subhead-left">Required Fields for Saving Document</span>
    		<span class="subhead-right"><kul:help businessObjectClassName="org.kuali.kra.protocol.bo.ProtocolType" altText="help"/></span>
        </h3>
		
		<table cellpadding=4 cellspacing=0 summary="">
            <tr>
            	<th><div align="right"><kul:htmlAttributeLabel attributeEntry="${protocolAttributes.protocolTypeCode}" /></div></th>
                <td align="left" valign="center">
                    <kra:kraControlAttribute property="document.protocolList[0].protocolTypeCode" readOnly="${readOnly}" attributeEntry="${protocolAttributes.protocolTypeCode}" />
                </td>
				
				<th><div align="right"><kul:htmlAttributeLabel attributeEntry="${protocolAttributes.principalInvestigatorId}" /></div></th>
                <td align="left" valign="top">
                <div id="principalInvestigator.div" property="principalInvestigator" >
                        <c:if test="${empty KualiForm.protocolHelper.principalInvestigatorName}">                                                 
                            <input type="hidden" name="protocolHelper.principalInvestigatorName" value="">              
                        </c:if>
                        <c:if test="${empty KualiForm.protocolHelper.personId}">          					                	
                	    	<input type="hidden" name="protocolHelper.personId" value="">              
                	    </c:if>       
                	    <c:if test="${empty KualiForm.protocolHelper.rolodexId}">          					                	
                            <input type="hidden" name="protocolHelper.rolodexId" value="">              
                	    </c:if>   	
                	    <c:if test="${empty KualiForm.protocolHelper.principalInvestigatorId}">          					                	
                            <input type="hidden" name="protocolHelper.principalInvestigatorId" value="">              
                            <input type="hidden" name="document.protocolList[0].principalInvestigatorId" value="">              
                	    </c:if>   	
                	    <table width="100%" border="0" style="border: medium none ;">
                	    <tbody>
						<c:if test="${empty KualiForm.document.protocolList[0].protocolId}">  
						<tr>
						<td style="border: medium none ;">        					
							<label> Employee Search</label>
						</td>
						<td width="40" valign="middle" style="border: medium none ;">
							<label>
							<kul:lookup boClassName="org.kuali.kra.bo.Person" 
	                         fieldConversions="personId:protocolHelper.personId,fullName:protocolHelper.principalInvestigatorName,homeUnitRef.unitNumber:protocolHelper.lookupUnitNumber,homeUnitRef.unitName:protocolHelper.lookupUnitName" 
	                         /></label>
                         </td>
                         </tr>
                        <tr>
                        <td style="border: medium none ;">   
							<label>Non-employee Search</label> 
						</td>
                        <td width="40" valign="middle" style="border: medium none ;">	
							<label>
							<kul:lookup boClassName="org.kuali.kra.bo.NonOrganizationalRolodex" 
	                         fieldConversions="rolodexId:protocolHelper.rolodexId,unit.unitNumber:protocolHelper.lookupUnitNumber,unit.unitName:protocolHelper.lookupUnitName,fullName:protocolHelper.principalInvestigatorName"  
	                         />   
							</label>
						 </td>
                         </tr>	
						</c:if>

							
				    <tr>
                    <td style="border: medium none ;">  		
					<div id="principalInvestigatorName.div" >
                        <c:if test="${!empty KualiForm.protocolHelper.principalInvestigatorId}">
                        <input type="hidden" name="document.protocolList[0].principalInvestigatorId" value="${KualiForm.protocolHelper.principalInvestigatorId}">              
            				<c:choose>
							    <c:when test="${empty KualiForm.protocolHelper.principalInvestigatorName}">
	                    			<span style='color: red;'>not found</span><br>
	               				</c:when>
	                  			<c:otherwise>
										<c:out value="${KualiForm.protocolHelper.principalInvestigatorName}" />
								<br>
								</c:otherwise>  
							</c:choose>                        
                        </c:if>
                        
					</td>
                    </tr>  
                    </tbody>
                    </table>
                    </div>
                </td>
				</div>


            </tr>
            <tr>
                <th><div align="right"><kul:htmlAttributeLabel attributeEntry="${protocolAttributes.title}" /></div></th>
                <td align="left" valign="top">
                	<kul:htmlControlAttribute property="document.protocolList[0].title" attributeEntry="${protocolAttributes.title}" readOnly="${readOnly}" />
                    <c:if test="${!readOnly}">
                        <kra:expandedTextArea textAreaFieldName="${textAreaFieldName}" action="${action}" textAreaLabel="${protocolAttributes.title.label}" />
                    </c:if>
                </td>
                
                <th><div align="right"><kul:htmlAttributeLabel attributeEntry="${protocolAttributes.leadUnitNumber}" /></div></th>            
                <td align="left" valign="center">
                
                <table width="100%" border="0" style="border: medium none ;">
                <tbody>
                <tr>
                <td style="border: medium none ;">   
                        
                    <c:if test="${empty KualiForm.document.protocolList[0].protocolId}">
                    	<kul:htmlControlAttribute property="protocolHelper.leadUnitNumber" 
						 attributeEntry="${protocolAttributes.leadUnitNumber}"  
						 onblur="loadUnitNameTo('protocolHelper.leadUnitNumber','protocolHelper.leadUnitName');"/> 
				
				</td>
                <td width="40" valign="middle" style="border: medium none ;">
                        		 						                  
	                    <kul:lookup boClassName="org.kuali.kra.bo.Unit" 
	                     fieldConversions="unitNumber:protocolHelper.leadUnitNumber,unitName:protocolHelper.leadUnitName" />
                    
	                    <kul:directInquiry boClassName="org.kuali.kra.bo.Unit" 
	                     inquiryParameters="protocolHelper.leadUnitNumber:unitNumber" 
	                     anchor="${tabKey}" />
                    </label>
                    <br>
                    </c:if>
                 
                 </td>
                 </tr>   
                 <tr>
                 <td style="border: medium none ;">  					
				
                    <div id="protocolHelper.leadUnitName.div" align="left">         
                        <c:out value="${KualiForm.protocolHelper.leadUnitName}" /> 
                        <c:if test="${!empty KualiForm.protocolHelper.leadUnitNumber}">
            				<c:choose>
							<c:when test="${empty KualiForm.protocolHelper.leadUnitName}">
	                    		<span style='color: red;'>not found</span><br>
	               			</c:when>
	                  		<c:otherwise>
	                  		    <input type="hidden" name="protocolHelper.leadUnitName" value="${KualiForm.protocolHelper.leadUnitName}">              
                         	</c:otherwise>  
							</c:choose>                        
                        </c:if>
					</div>
					<c:if test="${!empty KualiForm.document.protocolList[0].protocolId && !empty KualiForm.protocolHelper.leadUnitNumber}">
                       - ${KualiForm.document.protocolList[0].leadUnit.unitNumber}
                    </c:if>
                    
                    </td>
                    </tr>  
                    </tbody>
                    </table>
                    
				</td>
                
                
				
                
				
				
            </tr>
		</table>
	</div>	
</kul:tab>		