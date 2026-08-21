control 'SC-18a.[01]' do
  impact 0.5
  title "acceptable mobile code is defined;"
  desc <<~DESC
    a. Define acceptable and unacceptable mobile code and mobile code technologies; and
    b. Authorize, monitor, and control the use of mobile code within the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      acceptable mobile code is defined;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing mobile code; mobile code implementation policy and procedures; list of acceptable mobile code and mobile code technologies; list of unacceptable mobile code and mobile technologies; authorization records; system monitoring records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing mobile code
      TEST: Organizational process for authorizing, monitoring, and controlling mobile code; mechanisms supporting and/or implementing the management of mobile code; mechanisms supporting and/or implementing the monitoring of mobile code
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Mobile code includes any program, application, or content that can be transmitted across a network (e.g., embedded in an email, document, or website) and executed on a remote system. Decisions regarding the use of mobile code within organizational systems are based on the potential for the code to cause damage to the systems if used maliciously. Mobile code technologies include Java applets, JavaScript, HTML5, WebGL, and VBScript. Usage restrictions and implementation guidelines apply to both the selection and use of mobile code installed on servers and mobile code downloaded and executed on individual workstations and devices, including notebook computers and smart phones. Mobile code policy and procedures address specific actions taken to prevent the development, acquisition, and introduction of unacceptable mobile code within organizational systems, including requiring mobile code to be digitally signed by a trusted source.
  GUIDANCE
  tag nist: ['SC-18']
  tag control: 'SC-18'
  tag objective: 'SC-18a.[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_18: true

  describe 'NIST SP 800-53A Rev 5 objective SC-18a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
