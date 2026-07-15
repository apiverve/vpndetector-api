declare module '@apiverve/vpndetector' {
  export interface vpndetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface vpndetectorResponse {
    status: string;
    error: string | null;
    data: VPNProxyDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface VPNProxyDetectorData {
      ip:           null | string;
      isVPN:        boolean | null;
      isDatacenter: boolean | null;
      checkedOn:    Date | null;
      riskLevel:    null | string;
      threatLevel:  null | string;
  }

  export default class vpndetectorWrapper {
    constructor(options: vpndetectorOptions);

    execute(callback: (error: any, data: vpndetectorResponse | null) => void): Promise<vpndetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: vpndetectorResponse | null) => void): Promise<vpndetectorResponse>;
    execute(query?: Record<string, any>): Promise<vpndetectorResponse>;
  }
}
