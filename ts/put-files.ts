import { Web3Storage, getFilesFromPath } from "web3.storage";
import dotenv from "dotenv";

dotenv.config();

export default async function uploadToWeb3Storage(path: string) {
  if (!process.env.WEB3_STORAGE_API_KEY) {
    throw new Error(
      "A token is needed. You can create one on https://web3.storage"
    );
  }

  if (!path) {
    throw new Error("Please supply the path to a file or directory");
  }
  const token = process.env.WEB3_STORAGE_API_KEY;
  const storage = new Web3Storage({ token });
  const files = await getFilesFromPath(path);

  // console.log(`Uploading ${files.length} files`);
  const cid = await storage.put(files, {
    wrapWithDirectory: false,
  });
  // console.log("Content added with CID:", cid);

  return cid;
}
