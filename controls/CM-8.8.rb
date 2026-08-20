control 'CM-8 (8)' do
  impact 0.5
  title 'Automated Location Tracking'
  desc <<~DESC
    Support the tracking of system components by geographic location using #{input('cm_08_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-08(08) #{input('cm_08_08_odp')} are used to support the tracking of system components by geographic location.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system design documentation; system component inventory; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Organizational processes for managing the system component inventory; automated mechanisms supporting and/or implementing system component inventory; automated mechanisms supporting and/or implementing tracking of components by geographic locations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of automated mechanisms to track the location of system components can increase the accuracy of component inventories. Such capability may help organizations rapidly identify the location and responsible individuals of system components that have been compromised, breached, or are otherwise in need of mitigation actions. The use of tracking mechanisms can be coordinated with senior agency officials for privacy if there are implications that affect individual privacy.
  GUIDANCE
  tag nist: ['CM-8 (8)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_08_08_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-8 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
