control 'SI-03a.[01]' do
  impact 0.5
  title "#{input('si_03_odp_01')} malicious code protection mechanisms are implemented at system entry and exit points to detect malicious code;"
  desc <<~DESC
    a. Implement #{input('si_03_odp_01')} malicious code protection mechanisms at system entry and exit points to detect and eradicate malicious code;
    b. Automatically update malicious code protection mechanisms as new releases are available in accordance with organizational configuration management policy and procedures;
    c. Configure malicious code protection mechanisms to:
      1. Perform periodic scans of the system #{input('si_03_odp_02')} and real-time scans of files from external sources at #{input('si_03_odp_03')} as the files are downloaded, opened, or executed in accordance with organizational policy; and
      2. #{input('si_03_odp_04')} ; and send alert to #{input('si_03_odp_06')} in response to malicious code detection; and
    d. Address the receipt of false positives during malicious code detection and eradication and the resulting potential impact on the availability of the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_03_odp_01')} malicious code protection mechanisms are implemented at system entry and exit points to detect malicious code;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; configuration management policy and procedures; procedures addressing malicious code protection; malicious code protection mechanisms; records of malicious code protection updates; system design documentation; system configuration settings and associated documentation; scan results from malicious code protection mechanisms; record of actions initiated by malicious code protection mechanisms in response to malicious code detection; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for malicious code protection; organizational personnel with configuration management responsibilities
      TEST: Organizational processes for employing, updating, and configuring malicious code protection mechanisms; organizational processes for addressing false positives and resulting potential impacts; mechanisms supporting and/or implementing, employing, updating, and configuring malicious code protection mechanisms; mechanisms supporting and/or implementing malicious code scanning and subsequent actions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System entry and exit points include firewalls, remote access servers, workstations, electronic mail servers, web servers, proxy servers, notebook computers, and mobile devices. Malicious code includes viruses, worms, Trojan horses, and spyware. Malicious code can also be encoded in various formats contained within compressed or hidden files or hidden in files using techniques such as steganography. Malicious code can be inserted into systems in a variety of ways, including by electronic mail, the world-wide web, and portable storage devices. Malicious code insertions occur through the exploitation of system vulnerabilities. A variety of technologies and methods exist to limit or eliminate the effects of malicious code.

    Malicious code protection mechanisms include both signature- and nonsignature-based technologies. Nonsignature-based detection mechanisms include artificial intelligence techniques that use heuristics to detect, analyze, and describe the characteristics or behavior of malicious code and to provide controls against such code for which signatures do not yet exist or for which existing signatures may not be effective. Malicious code for which active signatures do not yet exist or may be ineffective includes polymorphic malicious code (i.e., code that changes signatures when it replicates). Nonsignature-based mechanisms also include reputation-based technologies. In addition to the above technologies, pervasive configuration management, comprehensive software integrity controls, and anti-exploitation software may be effective in preventing the execution of unauthorized code. Malicious code may be present in commercial off-the-shelf software as well as custom-built software and could include logic bombs, backdoors, and other types of attacks that could affect organizational mission and business functions.

    In situations where malicious code cannot be detected by detection methods or technologies, organizations rely on other types of controls, including secure coding practices, configuration management and control, trusted procurement processes, and monitoring practices to ensure that software does not perform functions other than the functions intended. Organizations may determine that, in response to the detection of malicious code, different actions may be warranted. For example, organizations can define actions in response to malicious code detection during periodic scans, the detection of malicious downloads, or the detection of maliciousness when attempting to open or execute files.
  GUIDANCE
  tag nist: ['SI-3']
  tag control: 'SI-3'
  tag objective: 'SI-03a.[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_3: true
  tag odp: %w{si_03_odp_01 si_03_odp_02 si_03_odp_03 si_03_odp_04 si_03_odp_06}

  describe 'NIST SP 800-53A Rev 5 objective SI-03a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
