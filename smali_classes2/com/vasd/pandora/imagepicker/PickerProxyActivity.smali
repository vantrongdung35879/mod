.class public Lcom/vasd/pandora/imagepicker/PickerProxyActivity;
.super Landroid/app/Activity;
.source "PickerProxyActivity.java"


# static fields
.field public static final PICKER_AUTH_FAIL:I = -0x4

.field public static final PICKER_CALLBACK_SUCC:I = 0x0

.field public static final PICKER_IAMGE_CALLBACK_EXCEPTION:I = -0x6

.field public static final PICKER_IAMGE_CALLBACK_FILTER_GIF:I = -0x5

.field public static final PICKER_IAMGE_CALLBACK_OVERSIZE_FAIL:I = -0x2

.field public static final PICKER_IAMGE_CALLBACK_WRITE_LOCAL_FAIL:I = -0x3

.field public static final PICKER_VIDEO_CALLBACK_FAIL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "unity pandora sdk"

.field private static final max_image_size:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cancelAction()V
    .locals 1

    .line 78
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    :cond_0
    return-void
.end method

.method private checkImageSize(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 93
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 94
    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 103
    const-string v1, "unity pandora sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", checkImageSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v1, v1, p1

    const/high16 p1, 0x1000000

    if-le v1, p1, :cond_0

    return v0

    :cond_0
    return v3

    .line 110
    :catch_0
    const-string v1, "checkImageSize failed"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 396
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 398
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 399
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 401
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 405
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v7, p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_3
    throw p1
.end method

.method public static getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 351
    :cond_0
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    invoke-static {p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ":"

    if-eqz v1, :cond_1

    .line 353
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 355
    aget-object p1, p0, v3

    .line 356
    const-string v1, "primary"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_1
    invoke-static {p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 361
    const-string v1, "content://downloads/public_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 362
    invoke-static {p0, p1, v0, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 363
    :cond_2
    invoke-static {p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 364
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 366
    aget-object v1, p1, v3

    .line 368
    const-string v3, "image"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 370
    :cond_3
    const-string v3, "video"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 372
    :cond_4
    const-string v3, "audio"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 376
    :cond_5
    :goto_0
    aget-object p1, p1, v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 377
    const-string v1, "_id=?"

    invoke-static {p0, v0, v1, p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 380
    :cond_6
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 382
    invoke-static {p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 383
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_7
    invoke-static {p0, p1, v0, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_8
    const-string p0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 388
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 313
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_2
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 319
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 322
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-nez v0, :cond_5

    .line 329
    invoke-static {p0, p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 337
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 425
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 416
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 1

    .line 443
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 434
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onGetVideoPath(Landroid/net/Uri;)V
    .locals 12

    .line 450
    const-string v0, "MediaMetadataRetriever release exception"

    const-string v1, "unity pandora sdk"

    invoke-virtual {p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 451
    invoke-virtual {p0, v2, p1, v3}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 461
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 462
    invoke-static {p0, p1}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 463
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 466
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    .line 468
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 476
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 479
    :try_start_1
    invoke-virtual {p1, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x18

    .line 480
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v10, v2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 482
    :catch_1
    :try_start_3
    const-string v2, "get video meta info failed:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    :try_start_4
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 487
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_1
    const-string p1, "0"

    move-object v10, p1

    :goto_2
    const/4 v4, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->PickVideoFireCallback(ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 485
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 487
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_4
    throw v2

    .line 471
    :catch_4
    const-string p1, "get video info failed:"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v8, "0"

    const-string v9, ""

    const/4 v2, -0x1

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->PickVideoFireCallback(ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeToLocal(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 120
    new-array v0, v0, [B

    .line 121
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 122
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v1, v0, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 124
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 127
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "writeToLocal orgimagepath:"

    const-string v5, "invalid  imagepath:"

    const-string v6, "writeToLocal imagepath:"

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "requestCode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " resultCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "unity pandora sdk"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "PickerProxyActivity: onActivityResult("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v9, "\u76f8\u7247\u592a\u5927\u4e86\uff0c\u65e0\u6cd5\u88c1\u526a"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const-string v12, ""

    if-eq v0, v10, :cond_10

    const/4 v13, 0x6

    const/4 v14, 0x2

    const-string v7, "writeToLocal failed. "

    const/4 v15, 0x0

    if-eq v0, v14, :cond_7

    const/4 v10, 0x3

    if-eq v0, v10, :cond_5

    const/4 v10, 0x4

    if-eq v0, v10, :cond_10

    if-eq v0, v13, :cond_7

    const/16 v4, 0x63

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eq v2, v11, :cond_1

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->cancelAction()V

    return-void

    .line 268
    :cond_1
    const-string v0, "\u76f8\u518c\u88c1\u526a\u6210\u529f"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u88c1\u526a\u4ee5\u540e [ "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ], path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    const-string v0, "Build.VERSION.SDK_INT: %d, write image to sandbox, imagePath: %s"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v2, v3, v15

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->outputUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->outputUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 278
    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->writeToLocal(Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_2
    const/4 v0, 0x0

    .line 281
    sput-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->outputUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_3
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 293
    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->orgImagePath:Ljava/lang/String;

    invoke-static {v15, v0, v2}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->orgImagePath:Ljava/lang/String;

    const/4 v3, -0x3

    invoke-static {v3, v0, v2}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    return-void

    :cond_5
    if-eq v2, v11, :cond_6

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->cancelAction()V

    return-void

    .line 259
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->onGetVideoPath(Landroid/net/Uri;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    goto/16 :goto_3

    :cond_7
    if-ne v0, v13, :cond_8

    .line 143
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 145
    const-string v10, "image/gif"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    const-string v0, "pick gif, just return"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    .line 147
    invoke-static {v0, v12, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContentResolver().getType exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x6

    .line 156
    invoke-static {v0, v12, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    return-void

    .line 162
    :cond_8
    sput-object v12, Lcom/vasd/pandora/imagepicker/ImageCropper;->orgImagePath:Ljava/lang/String;

    if-eq v2, v11, :cond_9

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->cancelAction()V

    return-void

    .line 167
    :cond_9
    sget-boolean v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->isOutputImageCutted:Z

    if-nez v0, :cond_a

    .line 170
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 171
    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->writeToLocal(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-static {v15, v0, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    const/4 v2, -0x3

    invoke-static {v2, v0, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    :goto_0
    return-void

    .line 185
    :cond_a
    sget-boolean v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->needOriginalImage:Z

    if-eqz v0, :cond_d

    .line 188
    :try_start_3
    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 189
    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v0, :cond_c

    if-gtz v2, :cond_b

    goto :goto_1

    .line 196
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v6, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->orgImagePath:Ljava/lang/String;

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 198
    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->orgImagePath:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->writeToLocal(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->orgImagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 192
    :cond_c
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    .line 205
    invoke-static {v2, v12, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    return-void

    .line 211
    :cond_d
    :goto_2
    const-string v0, "\u76f8\u518c\uff0c\u5f00\u59cb\u88c1\u526a"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u76f8\u518c [ "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_e

    .line 214
    const-string v0, "\u76f8\u518c \u6ca1\u6709\u8fd4\u56de\u6570\u636e\uff01\uff01"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_e
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->checkImageSize(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget v2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    sget v3, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-static {v1, v0, v2, v3}, Lcom/vasd/pandora/imagepicker/ImageCropper;->requestCrop(Landroid/app/Activity;Landroid/net/Uri;II)V

    goto :goto_3

    .line 224
    :cond_f
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 225
    invoke-static {v0, v12, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    goto :goto_3

    :cond_10
    if-eq v2, v11, :cond_11

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->cancelAction()V

    return-void

    .line 237
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u76f8\u673a, \u5f00\u59cb\u88c1\u526a:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", output size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 244
    invoke-direct {v1, v0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->checkImageSize(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 245
    sget v2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    sget v3, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-static {v1, v0, v2, v3}, Lcom/vasd/pandora/imagepicker/ImageCropper;->requestCrop(Landroid/app/Activity;Landroid/net/Uri;II)V

    goto :goto_3

    .line 248
    :cond_12
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 249
    invoke-static {v0, v12, v12}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->finish()V

    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ProxyActivity: OnCreate:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unity pandora sdk"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->pickType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    sget p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->pickType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/vasd/pandora/imagepicker/ImageCropper;->requestAlbum(Landroid/app/Activity;)V

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/vasd/pandora/imagepicker/ImageCropper;->requestCamera(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 61
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;->cancelAction()V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
