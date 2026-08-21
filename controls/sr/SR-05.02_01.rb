control 'SR-05(02)[01]' do
  impact 0.5
  title "the system, system component, or system service is assessed prior to selection;"
  desc <<~DESC
    Assess the system, system component, or system service prior to selection, acceptance, modification, or update.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the system, system component, or system service is assessed prior to selection;

    Assessment methods and objects:
      EXAMINE: System security plan; system and services acquisition policy; procedures addressing supply chain protection; procedures addressing the integration of information security requirements into the acquisition process; security test and evaluation results; vulnerability assessment results; penetration testing results; organizational risk assessment results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain protection responsibilities
      TEST: Organizational processes for conducting assessments prior to selection, acceptance, or update; mechanisms supporting and/or implementing the conducting of assessments prior to selection, acceptance, or update
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational personnel or independent, external entities conduct assessments of systems, components, products, tools, and services to uncover evidence of tampering, unintentional and intentional vulnerabilities, or evidence of non-compliance with supply chain controls. These include malicious code, malicious processes, defective software, backdoors, and counterfeits. Assessments can include evaluations; design proposal reviews; visual or physical inspection; static and dynamic analyses; visual, x-ray, or magnetic particle inspections; simulations; white, gray, or black box testing; fuzz testing; stress testing; and penetration testing (see [SR-6(1)](#sr-6.1) ). Evidence generated during assessments is documented for follow-on actions by organizations. The evidence generated during the organizational or independent assessments of supply chain elements may be used to improve supply chain processes and inform the supply chain risk management process. The evidence can be leveraged in follow-on assessments. Evidence and other documentation may be shared in accordance with organizational agreements.
  GUIDANCE
  tag nist: ['SR-5 (2)']
  tag control: 'SR-5 (2)'
  tag objective: 'SR-05(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_5_2: true

  describe 'NIST SP 800-53A Rev 5 objective SR-05(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
