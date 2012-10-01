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
package org.kuali.kra.iacuc.actions.assignreviewers;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.common.committee.bo.CommitteeMembershipBase;
import org.kuali.kra.iacuc.actions.IacucActionHelper;
import org.kuali.kra.iacuc.actions.IacucProtocolActionBean;
import org.kuali.kra.iacuc.actions.submit.IacucProtocolReviewerBean;
import org.kuali.kra.iacuc.committee.service.IacucCommitteeService;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.protocol.actions.assignreviewers.ProtocolAssignReviewersBean;
import org.kuali.kra.protocol.actions.submit.ProtocolReviewerBean;
import org.kuali.kra.protocol.actions.submit.ProtocolSubmission;
import org.kuali.kra.protocol.onlinereview.ProtocolOnlineReview;

/**
 * This class is really just a "form" for assigning a protocol
 * to one or more reviewers.
 */
public class IacucProtocolAssignReviewersBean extends IacucProtocolActionBean implements ProtocolAssignReviewersBean {

    private static final long serialVersionUID = -3769655019628462999L;
    
    private String currentCommitteeId = null;
    private String currentScheduleId = null;
    private List<ProtocolReviewerBean> reviewers = new ArrayList<ProtocolReviewerBean>();
    
    /**
     * Constructs a ProtocolAssignReviewersBean.
     * @param actionHelper Reference back to the action helper for this bean
     */
    public IacucProtocolAssignReviewersBean(IacucActionHelper actionHelper) {
        super(actionHelper);
    }
    
    /**
     * Create the list of reviewers based upon the current committee
     * and schedule, and assigns their reviewer types if any have been saved in the past
     */
    public void prepareView() {
        ProtocolSubmission submission = getProtocol().getProtocolSubmission();
        if (submission != null) {
            String committeeId = submission.getCommitteeId();
            String scheduleId = submission.getScheduleId();
            
            if (!StringUtils.equals(committeeId, currentCommitteeId) || !StringUtils.equals(scheduleId, currentScheduleId)) {
                currentCommitteeId = committeeId;
                currentScheduleId = scheduleId;
                reviewers.clear();
                
// TODO *********commented the code below during IACUC refactoring*********
// are expedited submissions relevant for IACUC?                 
//                if (!StringUtils.isBlank(committeeId) && (!StringUtils.isBlank(scheduleId) || isExpeditedSubmission(submission))) {
                
                if (!StringUtils.isBlank(committeeId) && !StringUtils.isBlank(scheduleId)) {
                    List<CommitteeMembershipBase> members = getProtocol().filterOutProtocolPersonnel(getCommitteeService().getAvailableMembers(committeeId, scheduleId));
                    for (CommitteeMembershipBase member : members) {
                        reviewers.add(new IacucProtocolReviewerBean(member));
                    }
                    
                    for (ProtocolOnlineReview review : submission.getProtocolOnlineReviews()) {
                        if (review.isActive()) {
                            for (ProtocolReviewerBean reviewerBean : reviewers) {
                                if (reviewerBean.isProtocolReviewerBeanForReviewer(review.getProtocolReviewer())) {
                                    reviewerBean.setReviewerTypeCode(review.getProtocolReviewer().getReviewerTypeCode());
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private IacucCommitteeService getCommitteeService() {
        return KraServiceLocator.getService(IacucCommitteeService.class);
    }
    
    public List<ProtocolReviewerBean> getReviewers() {
        return reviewers;
    }
    
    public ProtocolReviewerBean getReviewer(int i) {
        return reviewers.get(i);
    }
    
    /**
     * We display the reviewers in two columns.  These are the
     * reviewers in the left column.
     * @return
     */
    public List<ProtocolReviewerBean> getLeftReviewers() {
        List<ProtocolReviewerBean> leftReviewers = new ArrayList<ProtocolReviewerBean>();
        for (int i = 0; i < (reviewers.size() + 1) / 2; i++) {
            leftReviewers.add(reviewers.get(i));
        }
        return leftReviewers;
    }
    
    /**
     * We display the reviewers in two columns.  These are the
     * reviewers in the right column.
     * @return
     */
    public List<ProtocolReviewerBean> getRightReviewers() {
        List<ProtocolReviewerBean> rightReviewers = new ArrayList<ProtocolReviewerBean>();
        for (int i = (reviewers.size() + 1) / 2; i < reviewers.size(); i++) {
            rightReviewers.add(reviewers.get(i));
        }
        return rightReviewers;
    }
    
// TODO *********commented the code below during IACUC refactoring*********     
// not relevant for IACUC? 
//    private boolean isExpeditedSubmission(ProtocolSubmission submission) {
//        return submission != null && IacucProtocolReviewType.EXPEDITED_REVIEW_TYPE_CODE.equals(submission.getProtocolReviewTypeCode());
//    }
    
    
}
