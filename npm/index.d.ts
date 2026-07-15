declare module '@apiverve/facedetect' {
  export interface facedetectOptions {
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

  export interface facedetectResponse {
    status: string;
    error: string | null;
    data: FaceDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface FaceDetectorData {
      faces:             Face[];
      faceCount:         number | null;
      hasFaces:          boolean | null;
      imageWidth:        number | null;
      imageHeight:       number | null;
      averageConfidence: number | null;
      imageCoverage:     number | null;
  }
  
  interface Face {
      x:          number | null;
      y:          number | null;
      width:      number | null;
      height:     number | null;
      confidence: number | null;
  }

  export default class facedetectWrapper {
    constructor(options: facedetectOptions);

    execute(callback: (error: any, data: facedetectResponse | null) => void): Promise<facedetectResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: facedetectResponse | null) => void): Promise<facedetectResponse>;
    execute(query?: Record<string, any>): Promise<facedetectResponse>;
  }
}
