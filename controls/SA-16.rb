control 'SA-16' do
  impact 0.5
  title 'Developer-provided Training'
  desc <<~DESC
    Require the developer of the system, system component, or system service to provide the following training on the correct use and operation of the implemented security and privacy functions, controls, and/or mechanisms: #{input('sa_16_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-16 the developer of the system, system component, or system service is required to provide #{input('sa_16_odp')} on the correct use and operation of the implemented security and privacy functions, controls, and/or mechanisms.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing developer-provided training; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; organizational security and privacy training policy; developer-provided training materials; training records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer; external or internal (in-house) developers with training responsibilities for the system, system component, or information system service
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Developer-provided training applies to external and internal (in-house) developers. Training personnel is essential to ensuring the effectiveness of the controls implemented within organizational systems. Types of training include web-based and computer-based training, classroom-style training, and hands-on training (including micro-training). Organizations can also request training materials from developers to conduct in-house training or offer self-training to organizational personnel. Organizations determine the type of training necessary and may require different types of training for different security and privacy functions, controls, and mechanisms.
  GUIDANCE
  tag nist: ['SA-16']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{sa_16_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-16' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
