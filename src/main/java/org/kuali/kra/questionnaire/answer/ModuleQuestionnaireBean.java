/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.questionnaire.answer;

import org.kuali.kra.irb.Protocol;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;

/**
 * This class is intend as a link between modules & questionnaire answer So, Questionnaire answer service can be shared.
 **/
public class ModuleQuestionnaireBean {
    private String moduleItemCode;
    private String moduleSubItemCode;
    private String moduleItemKey;
    /*
     * regular protocol & amendment questionnaire: sequence number
     * protocol submission questionnaire : submission number
     */
    private String moduleSubItemKey;
    // finalDoc : as an indicator to retrieve non-current usage or not
    private boolean finalDoc;

    public ModuleQuestionnaireBean() {
        super();
    }

    public ModuleQuestionnaireBean(String moduleItemCode, DevelopmentProposal developmentProposal) {
        //TODO : temporary set up for PD. 
        this(moduleItemCode, developmentProposal.getProposalNumber(), "0", "0", developmentProposal.getProposalDocument().getDocumentHeader().getWorkflowDocument().stateIsApproved());      
  }

    public ModuleQuestionnaireBean(String moduleItemCode, Protocol protocol) {
        this(moduleItemCode, protocol.getProtocolNumber(), "0", protocol.getSequenceNumber().toString(), protocol.getProtocolDocument().getDocumentHeader().getWorkflowDocument().stateIsApproved());
        setProtocolSubItemCode(protocol) ;
      
  }

    public ModuleQuestionnaireBean(String moduleItemCode, String moduleItemKey, String moduleSubItemCode, String moduleSubItemKey, boolean finalDoc) {
        this.moduleItemCode = moduleItemCode;
        this.moduleSubItemCode = moduleSubItemCode;
        this.moduleItemKey = moduleItemKey;
        this.moduleSubItemKey = moduleSubItemKey;
        this.finalDoc = finalDoc;
    }

    private void setProtocolSubItemCode(Protocol protocol) {
    // For now check renewal/amendment.  will add 'Protocol Submission' when it is cleared
        String subModuleCode = "0";
        if (protocol.isAmendment() || protocol.isRenewal()) {
            subModuleCode = "1";
        }
        this.moduleSubItemCode = subModuleCode;
    }
    
    public String getModuleItemCode() {
        return moduleItemCode;
    }

    public void setModuleItemCode(String moduleItemCode) {
        this.moduleItemCode = moduleItemCode;
    }

    public String getModuleItemKey() {
        return moduleItemKey;
    }

    public void setModuleItemKey(String moduleItemKey) {
        this.moduleItemKey = moduleItemKey;
    }

    public String getModuleSubItemKey() {
        return moduleSubItemKey;
    }

    public void setModuleSubItemKey(String moduleSubItemKey) {
        this.moduleSubItemKey = moduleSubItemKey;
    }

    public boolean isFinalDoc() {
        return finalDoc;
    }

    public void setFinalDoc(boolean finalDoc) {
        this.finalDoc = finalDoc;
    }

    public String getModuleSubItemCode() {
        return moduleSubItemCode;
    }

    public void setModuleSubItemCode(String moduleSubItemCode) {
        this.moduleSubItemCode = moduleSubItemCode;
    }

}
