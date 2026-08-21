control 'MA-05b.' do
  impact 0.5
  title "non-escorted personnel performing maintenance on the system possess the required access authorizations;"
  desc <<~DESC
    a. Establish a process for maintenance personnel authorization and maintain a list of authorized maintenance organizations or personnel;
    b. Verify that non-escorted personnel performing maintenance on the system possess the required access authorizations; and
    c. Designate organizational personnel with required access authorizations and technical competence to supervise the maintenance activities of personnel who do not possess the required access authorizations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      non-escorted personnel performing maintenance on the system possess the required access authorizations;

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing maintenance personnel; service provider contracts; service-level agreements; list of authorized personnel; maintenance records; access control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for authorizing and managing maintenance personnel; mechanisms supporting and/or implementing authorization of maintenance personnel
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Maintenance personnel refers to individuals who perform hardware or software maintenance on organizational systems, while [PE-2](#pe-2) addresses physical access for individuals whose maintenance duties place them within the physical protection perimeter of the systems. Technical competence of supervising individuals relates to the maintenance performed on the systems, while having required access authorizations refers to maintenance on and near the systems. Individuals not previously identified as authorized maintenance personnel—such as information technology manufacturers, vendors, systems integrators, and consultants—may require privileged access to organizational systems, such as when they are required to conduct maintenance activities with little or no notice. Based on organizational assessments of risk, organizations may issue temporary credentials to these individuals. Temporary credentials may be for one-time use or for very limited time periods.
  GUIDANCE
  tag nist: ['MA-5']
  tag control: 'MA-5'
  tag objective: 'MA-05b.'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ma_5: true

  describe 'NIST SP 800-53A Rev 5 objective MA-05b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
