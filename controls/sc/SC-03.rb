control 'SC-03' do
  impact 0.5
  title "security functions are isolated from non-security functions."
  desc <<~DESC
    Isolate security functions from nonsecurity functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security functions are isolated from non-security functions.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing security function isolation; list of security functions to be isolated from non-security functions; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Separation of security functions from non-security functions within the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security functions are isolated from nonsecurity functions by means of an isolation boundary implemented within a system via partitions and domains. The isolation boundary controls access to and protects the integrity of the hardware, software, and firmware that perform system security functions. Systems implement code separation in many ways, such as through the provision of security kernels via processor rings or processor modes. For non-kernel code, security function isolation is often achieved through file system protections that protect the code on disk and address space protections that protect executing code. Systems can restrict access to security functions using access control mechanisms and by implementing least privilege capabilities. While the ideal is for all code within the defined security function isolation boundary to only contain security-relevant code, it is sometimes necessary to include nonsecurity functions as an exception. The isolation of security functions from nonsecurity functions can be achieved by applying the systems security engineering design principles in [SA-8](#sa-8) , including [SA-8(1)](#sa-8.1), [SA-8(3)](#sa-8.3), [SA-8(4)](#sa-8.4), [SA-8(10)](#sa-8.10), [SA-8(12)](#sa-8.12), [SA-8(13)](#sa-8.13), [SA-8(14)](#sa-8.14) , and [SA-8(18)](#sa-8.18).
  GUIDANCE
  tag nist: ['SC-3']
  tag control: 'SC-3'
  tag objective: 'SC-03'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_sc_3: true

  describe 'NIST SP 800-53A Rev 5 objective SC-03' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
