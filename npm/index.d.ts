declare module '@apiverve/facedetect' {
  export interface facedetectOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface facedetectResponse {
    status: string;
    error: string | null;
    data: FaceDetectorData;
    code?: number;
  }


  interface FaceDetectorData {
      faces:       Face[];
      faceCount:   number;
      hasFaces:    boolean;
      imageWidth:  number;
      imageHeight: number;
  }
  
  interface Face {
      x:          number;
      y:          number;
      width:      number;
      height:     number;
      confidence: number;
  }

  export default class facedetectWrapper {
    constructor(options: facedetectOptions);

    execute(callback: (error: any, data: facedetectResponse | null) => void): Promise<facedetectResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: facedetectResponse | null) => void): Promise<facedetectResponse>;
    execute(query?: Record<string, any>): Promise<facedetectResponse>;
  }
}
