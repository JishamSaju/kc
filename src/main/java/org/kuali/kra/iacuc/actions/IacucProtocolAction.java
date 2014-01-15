/*
 * Copyright 2005-2013 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.iacuc.actions;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.common.committee.service.CommitteeServiceBase;
import org.kuali.kra.iacuc.IacucProtocol;
import org.kuali.kra.iacuc.actions.submit.IacucProtocolSubmission;
import org.kuali.kra.iacuc.committee.service.IacucCommitteeService;
import org.kuali.kra.iacuc.questionnaire.IacucSubmissionQuestionnaireHelper;
import org.kuali.kra.protocol.ProtocolBase;
import org.kuali.kra.protocol.actions.ProtocolActionBase;
import org.kuali.kra.protocol.questionnaire.ProtocolModuleQuestionnaireBeanBase;
import org.kuali.kra.protocol.questionnaire.ProtocolSubmissionQuestionnaireHelper;
import org.kuali.kra.questionnaire.answer.AnswerHeader;

/**
 * 
 * This class manages all the attributes needed to maintain a protocol action.
 */
public class IacucProtocolAction extends ProtocolActionBase {
    
    private static final long serialVersionUID = -4895673225969021493L;

    private boolean createdSubmission;
    
    public IacucProtocolAction() {
    }

    public IacucProtocolAction(IacucProtocol protocol, IacucProtocolSubmission protocolSubmission, String protocolActionTypeCode) {
        super(protocol, protocolSubmission, protocolActionTypeCode);
    }
        
    public IacucProtocolAction(IacucProtocol protocol, String protocolActionTypeCode) {
        super(protocol, protocolActionTypeCode);
    }

    protected String getCoeusModule() {
        return CoeusModule.IACUC_PROTOCOL_MODULE_CODE;
    }

    public boolean isCreatedSubmission() {
        return createdSubmission;
    }

    public void setCreatedSubmission(boolean createdSubmission) {
        this.createdSubmission = createdSubmission;
    }
    
    @Override
    protected Class<? extends CommitteeServiceBase> getCommitteeServiceClassHook() {
        return IacucCommitteeService.class;
    }

    @Override
    protected ProtocolSubmissionQuestionnaireHelper getProtocolSubmissionQuestionnaireHelperHook(ProtocolBase protocol, String actionTypeCode,
            String submissionNumber) {
        return new IacucSubmissionQuestionnaireHelper(protocol, actionTypeCode, submissionNumber, true);
    }
    
    @Override
    public ProtocolSubmissionQuestionnaireHelper getQuestionnaireHelper() {
        IacucSubmissionQuestionnaireHelper questionnaireHelper = (IacucSubmissionQuestionnaireHelper) super.getQuestionnaireHelper();
        
        if(StringUtils.equals(getProtocolActionTypeCode(),IacucProtocolActionType.SUBMITTED_TO_IACUC)) {
            //add ZERO_SUBMODULE answer headers. These headers do not get picked up by populateAnswers() above.
            ProtocolModuleQuestionnaireBeanBase protocolBaseQnBean = questionnaireHelper.getBaseProtocolModuleQuestionnaireBean(getSequenceNumber() == null ? null : getSequenceNumber().toString());
            List<AnswerHeader> protocolAnswerHeaders = questionnaireHelper.getQuestionnaireAnswerService().getQuestionnaireAnswer(protocolBaseQnBean);
            List<AnswerHeader> submissionAnswerHeaders = questionnaireHelper.getAnswerHeaders();
            submissionAnswerHeaders.addAll(protocolAnswerHeaders);
            questionnaireHelper.setAnswerHeaders(submissionAnswerHeaders);
            questionnaireHelper.resetHeaderLabels();
            setQuestionnaireHelper(questionnaireHelper);
        }
        
        return questionnaireHelper;
    }
    
}
