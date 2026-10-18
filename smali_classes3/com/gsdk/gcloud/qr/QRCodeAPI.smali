.class public Lcom/gsdk/gcloud/qr/QRCodeAPI;
.super Ljava/lang/Object;
.source "QRCodeAPI.java"


# static fields
.field private static final MSG_TAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApolloQR"

.field private static mInstance:Lcom/gsdk/gcloud/qr/QRCodeAPI;


# instance fields
.field private mAppPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchURL:Ljava/lang/String;

.field private mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    .line 29
    iput-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    .line 30
    const-string v0, "AUTOSTART"

    iput-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/gsdk/gcloud/qr/QRCodeAPI$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/gsdk/gcloud/qr/QRCodeAPI$2;-><init>(Lcom/gsdk/gcloud/qr/QRCodeAPI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object p2, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 155
    const-string p2, "ApolloQR"

    const-string p3, "QRCodeAPI GenerateQRImage savePath is null"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string p2, ""

    const/16 p3, 0x17

    invoke-virtual {p0, p1, p3, p2}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;-><init>(Lcom/gsdk/gcloud/qr/QRCodeAPI;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private native genQRImgNotify(IILjava/lang/String;)V
.end method

.method public static getInstance()Lcom/gsdk/gcloud/qr/QRCodeAPI;
    .locals 1

    .line 38
    sget-object v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mInstance:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-direct {v0}, Lcom/gsdk/gcloud/qr/QRCodeAPI;-><init>()V

    sput-object v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mInstance:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    .line 42
    :cond_0
    sget-object v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mInstance:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    return-object v0
.end method

.method private native launchNotify(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized GenerateQRImage(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    const/16 v1, 0xa

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p4, :cond_1

    .line 127
    const-string p2, "ApolloQR"

    const-string p4, "QRCodeAPI GenerateQRLogoImage logoPath is null"

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1, v2, p3, v0}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 132
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    const-string p2, "ApolloQR"

    const-string p4, "QRCodeAPI GenerateQRLogoImage logoFile not exists"

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1, v2, p3, v0}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 140
    :cond_2
    :try_start_2
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-nez p4, :cond_3

    .line 142
    const-string p2, "ApolloQR"

    const-string p3, "QRCodeAPI GenerateQRLogoImage Bitmap logo is null"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string p2, "error"

    invoke-virtual {p0, p1, v1, p2}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 147
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    invoke-virtual {v0, p2}, Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;->setQRCodeSize(I)V

    .line 148
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 121
    :cond_4
    :goto_0
    :try_start_4
    const-string p2, "ApolloQR"

    const-string p3, "QRCodeAPI GenerateQRLogoImage content is null"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string p2, "error"

    invoke-virtual {p0, p1, v1, p2}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public Initialize(Landroid/app/Activity;)Z
    .locals 3

    .line 62
    const-string v0, "ApolloQR"

    if-nez p1, :cond_0

    .line 64
    const-string p1, "QRCodeAPI Initialize Activity is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    .line 77
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QRCodeAPI Initialize mAppPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_2
    const-string v1, "QRCodeAPI Initialize getExternalCacheDir failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    if-nez v0, :cond_3

    .line 86
    new-instance v0, Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    invoke-direct {v0}, Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;-><init>()V

    iput-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mQREncodeUtil:Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->RefreshLaunch(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public OnGenerateQRImage(IILjava/lang/String;)V
    .locals 0

    .line 208
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->genQRImgNotify(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "QRCodeAPI OnGenerateQRImage Exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApolloQR"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public QRCodeInit()V
    .locals 3

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->qrCodeInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QRCodeAPI QRCoceInit jni error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApolloQR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public RefreshLaunch(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 94
    const-string v1, "ApolloQR"

    if-nez p1, :cond_0

    .line 96
    const-string p1, "QRCodeAPI RefreshLaunch Intent is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 101
    const-string v2, ""

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "QRCodeAPI RefreshLaunch mLaunchURL:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 106
    :try_start_0
    iget-object p1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->launchNotify(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QRCodeAPI RefreshLaunch launchNotify jni error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public init()V
    .locals 1

    .line 46
    sget-object v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mInstance:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-direct {v0}, Lcom/gsdk/gcloud/qr/QRCodeAPI;-><init>()V

    sput-object v0, Lcom/gsdk/gcloud/qr/QRCodeAPI;->mInstance:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    :cond_0
    return-void
.end method

.method public native qrCodeInit()V
.end method
