import { DockerCRABaseEnvType } from 'docker-cra';

interface IEnvValues extends DockerCRABaseEnvType {
  REACT_APP_HELLO_WORLD: string;
}

export declare global {
  interface Window {
    env: IEnvValues;
  }
}
