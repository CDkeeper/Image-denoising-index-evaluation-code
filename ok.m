for i = 1:26
    ref1 = imread(strcat('C:\Users\chenda\Desktop\resources\end\or\',num2str(i),'.jpg'));
    ref1 = ref1(:,:,1);
    ref2 = imread(strcat('C:\Users\chenda\Desktop\resources\end\res\1\',num2str(i),'.jpg'));
    ref2 = ref2(:,:,1);
    [ssimval, ssimmap] = SSIM(ref1,ref2);
    [peaksnr, snr] = PSNR(ref1,ref2);
    fprintf('%0.4f\n',ssimval);
    %fprintf('%0.4f\n', peaksnr);
    %fprintf('%0.4f\n', RMSE(ref1,ref2));
end

%     ref1 = imread(strcat('C:\Users\chenda\Desktop\GI图\Lincoln.png'));
%     ref1 = ref1(:,:,1);
%     ref2 = imread(strcat('C:\Users\chenda\Desktop\GI图\Lincoln_GI_SwinIR_large.png'));
%     ref2 = ref2(:,:,1);
%     [ssimval, ssimmap] = SSIM(ref1,ref2);
%     [peaksnr, snr] = PSNR(ref1,ref2);
%     fprintf('%0.4f\n',ssimval);
% %     fprintf('%0.4f\n', peaksnr);
% %     fprintf('%0.4f\n', RMSE(ref1,ref2));
