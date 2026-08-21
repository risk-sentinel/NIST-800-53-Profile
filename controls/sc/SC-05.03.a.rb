control 'SC-05(03)(a)' do
  impact 0.5
  title "#{input('sc_05_03_odp_01')} are employed to detect indicators of denial-of-service attacks against or launched from the system;"
  desc <<~DESC
    (a) Employ the following monitoring tools to detect indicators of denial-of-service attacks against, or launched from, the system: #{input('sc_05_03_odp_01')} ; and
    (b) Monitor the following system resources to determine if sufficient resources exist to prevent effective denial-of-service attacks: #{input('sc_05_03_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_05_03_odp_01')} are employed to detect indicators of denial-of-service attacks against or launched from the system;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing denial-of-service protection; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with detection and monitoring responsibilities
      TEST: Mechanisms/tools implementing system monitoring for denial-of-service attacks
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider the utilization and capacity of system resources when managing risk associated with a denial of service due to malicious attacks. Denial-of-service attacks can originate from external or internal sources. System resources that are sensitive to denial of service include physical disk storage, memory, and CPU cycles. Techniques used to prevent denial-of-service attacks related to storage utilization and capacity include instituting disk quotas, configuring systems to automatically alert administrators when specific storage capacity thresholds are reached, using file compression technologies to maximize available storage space, and imposing separate partitions for system and user data.
  GUIDANCE
  tag nist: ['SC-5 (3)']
  tag control: 'SC-5 (3)'
  tag objective: 'SC-05(03)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_5_3: true
  tag odp: %w{sc_05_03_odp_01 sc_05_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-05(03)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
