.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .line 463
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fittingMode:I

    iput-object p7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 463
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 467
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 468
    return-object v1

    .line 471
    :cond_0
    new-instance v0, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v2, v2, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v0, v2, v3}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 474
    .local v0, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 475
    invoke-virtual {v4}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v4

    .line 474
    invoke-static {v2, v3, v4}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$100(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 477
    .local v2, "maybeGrayscale":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_1

    .line 478
    return-object v1

    .line 482
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v4

    .line 485
    .local v4, "page":Landroid/graphics/pdf/PdfDocument$Page;
    iget-object v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v5, v5, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v5, :cond_2

    .line 486
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 486
    .local v3, "contentRect":Landroid/graphics/RectF;
    goto :goto_0

    .line 490
    .end local v3    # "contentRect":Landroid/graphics/RectF;
    :cond_2
    new-instance v5, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v6, v6, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 492
    .local v5, "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 493
    .local v3, "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 494
    .local v6, "contentRect":Landroid/graphics/RectF;
    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 495
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 499
    .end local v3    # "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    move-object v3, v6

    .line 499
    .end local v6    # "contentRect":Landroid/graphics/RectF;
    .local v3, "contentRect":Landroid/graphics/RectF;
    :goto_0
    iget-object v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fittingMode:I

    .line 499
    invoke-static {v5, v6, v7, v3, v8}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$200(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 503
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v6, v6, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v6, :cond_3

    goto :goto_1

    .line 507
    :cond_3
    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 510
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 514
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 517
    invoke-virtual {v0, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 519
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    .line 520
    nop

    .line 528
    :try_start_2
    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 530
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v6, :cond_4

    .line 532
    :try_start_3
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 535
    goto :goto_2

    .line 533
    :catch_0
    move-exception v6

    .line 538
    :cond_4
    :goto_2
    :try_start_4
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v6, :cond_5

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    return-object v1

    .line 524
    :cond_6
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 525
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 524
    invoke-virtual {v0, v6}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    nop

    .line 528
    :try_start_6
    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 530
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v6, :cond_7

    .line 532
    :try_start_7
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 535
    goto :goto_3

    .line 533
    :catch_1
    move-exception v6

    .line 538
    :cond_7
    :goto_3
    :try_start_8
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v6, :cond_8

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v1

    .line 528
    .end local v3    # "contentRect":Landroid/graphics/RectF;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 530
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v3, :cond_9

    .line 532
    :try_start_9
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 535
    goto :goto_4

    .line 533
    :catch_2
    move-exception v3

    .line 538
    :cond_9
    :goto_4
    :try_start_a
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_a

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 542
    .end local v0    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v2    # "maybeGrayscale":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v0

    .line 543
    .local v0, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 463
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 549
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_0

    .line 552
    :cond_0
    if-nez p1, :cond_1

    .line 554
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_0

    .line 558
    :cond_1
    const-string v0, "PrintHelperApi19"

    const-string v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 561
    :goto_0
    return-void
.end method
