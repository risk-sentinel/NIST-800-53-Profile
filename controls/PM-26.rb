control 'PM-26' do
  impact 0.5
  title 'Complaint Management'
  desc <<~DESC
    Implement a process for receiving and responding to complaints, concerns, or questions from individuals about the organizational security and privacy practices that includes:
      a. Mechanisms that are easy to use and readily accessible by the public;
      b. All information necessary for successfully filing complaints;
      c. Tracking mechanisms to ensure all complaints received are reviewed and addressed within #{input('pm_26_prm_1')};
      d. Acknowledgement of receipt of complaints, concerns, or questions from individuals within #{input('pm_26_odp_03')} ; and
      e. Response to complaints, concerns, or questions from individuals within #{input('pm_26_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-26[01] a process for receiving complaints, concerns, or questions from individuals about organizational security and privacy practices is implemented;
      PM-26[02] a process for responding to complaints, concerns, or questions from individuals about organizational security and privacy practices is implemented;
      PM-26a.
        PM-26a.[01] the complaint management process includes mechanisms that are easy to use by the public;
        PM-26a.[02] the complaint management process includes mechanisms that are readily accessible by the public;
      PM-26b. the complaint management process includes all information necessary for successfully filing complaints;
      PM-26c.
        PM-26c.[01] the complaint management process includes tracking mechanisms to ensure that all complaints are reviewed within #{input('pm_26_odp_01')};
        PM-26c.[02] the complaint management process includes tracking mechanisms to ensure that all complaints are addressed within #{input('pm_26_odp_02')};
      PM-26d. the complaint management process includes acknowledging the receipt of complaints, concerns, or questions from individuals within #{input('pm_26_odp_03')};
      PM-26e. the complaint management process includes responding to complaints, concerns, or questions from individuals within #{input('pm_26_odp_04')}.

    Assessment methods and objects:
      EXAMINE: Privacy program plan; procedures addressing complaint management; complaint documentation; procedures addressing the reviews of complaints; other relevant documents or records
      INTERVIEW: Organizational personnel with privacy program responsibilities; organizational personnel with privacy responsibilities
      TEST: Organizational processes for complaint management; mechanisms supporting complaint management; tools used by the public to submit complaints, concerns, and questions (e.g., telephone, hotline, email, or web-based forms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Complaints, concerns, and questions from individuals can serve as valuable sources of input to organizations and ultimately improve operational models, uses of technology, data collection practices, and controls. Mechanisms that can be used by the public include telephone hotline, email, or web-based forms. The information necessary for successfully filing complaints includes contact information for the senior agency official for privacy or other official designated to receive complaints. Privacy complaints may also include personally identifiable information which is handled in accordance with relevant policies and processes.
  GUIDANCE
  tag nist: ['PM-26']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag odp: %w{pm_26_odp_01 pm_26_odp_02 pm_26_odp_03 pm_26_odp_04 pm_26_prm_1}

  describe 'NIST SP 800-53 Rev 5 control PM-26' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
