.class public Lcom/ngame/resources/ResourceDecompressActivity;
.super Landroid/app/Activity;
.source "ResourceDecompressActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Resources"

.field public static UnityPlayerActivityClass:Ljava/lang/Class;

.field private static isInitExtractThread:Z


# instance fields
.field private final BUNDLE_KEY_CUR_BYTE:Ljava/lang/String;

.field private final BUNDLE_KEY_CUR_FILE:Ljava/lang/String;

.field private final BUNDLE_KEY_TOTAL_BYTE:Ljava/lang/String;

.field private final MD5_RETRY_MAX_COUNT:I

.field private final SPLASH_TIMEOUT_MILLISECEND:I

.field protected curByte:J

.field private errorDialog:Landroid/app/AlertDialog;

.field protected eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

.field private extractHandler:Landroid/os/Handler;

.field private extractThread:Landroid/os/HandlerThread;

.field private isExtractFinish:Z

.field private isShowingExtractorView:Z

.field private mainHandler:Landroid/os/Handler;

.field protected md5RetryCount:I

.field private progressBar:Landroid/graphics/drawable/ClipDrawable;

.field private progressNum:Landroid/widget/TextView;

.field protected totalByte:J

.field protected viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/unity3d/player/UnityPlayerActivity;

    sput-object v0, Lcom/ngame/resources/ResourceDecompressActivity;->UnityPlayerActivityClass:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/ngame/resources/ResourceDecompressActivity;->isInitExtractThread:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->isExtractFinish:Z

    .line 56
    iput v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->md5RetryCount:I

    const/4 v1, 0x3

    .line 57
    iput v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->MD5_RETRY_MAX_COUNT:I

    .line 62
    const-string/jumbo v1, "total_byte"

    iput-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->BUNDLE_KEY_TOTAL_BYTE:Ljava/lang/String;

    .line 63
    const-string v1, "cur_byte"

    iput-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->BUNDLE_KEY_CUR_BYTE:Ljava/lang/String;

    .line 64
    const-string v1, "cur_file"

    iput-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->BUNDLE_KEY_CUR_FILE:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->totalByte:J

    .line 66
    iput-wide v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->curByte:J

    const/16 v1, 0xbb8

    .line 69
    iput v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->SPLASH_TIMEOUT_MILLISECEND:I

    .line 76
    iput-boolean v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->isShowingExtractorView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ngame/resources/ResourceDecompressActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->isExtractFinish:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ngame/resources/ResourceDecompressActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->isExtractFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ngame/resources/ResourceDecompressActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->isShowingExtractorView:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ngame/resources/ResourceDecompressActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->isShowingExtractorView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ngame/resources/ResourceDecompressActivity;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/ngame/resources/ResourceDecompressActivity;->updateProgressView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ngame/resources/ResourceDecompressActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/ngame/resources/ResourceDecompressActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->startUnityPlayerActivity()V

    return-void
.end method

.method static synthetic access$502(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/graphics/drawable/ClipDrawable;)Landroid/graphics/drawable/ClipDrawable;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->progressBar:Landroid/graphics/drawable/ClipDrawable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->progressNum:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->extractHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ngame/resources/ResourceDecompressActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->killProcess()V

    return-void
.end method

.method private killProcess()V
    .locals 2

    .line 343
    const-string v0, "kill process..."

    const-string v1, "Resources"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->errorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "kill process dismiss errorDialog"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->errorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->finish()V

    .line 350
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 351
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->errorDialog:Landroid/app/AlertDialog;

    const-string v1, "Resources"

    if-nez v0, :cond_0

    .line 324
    const-string v0, "show error dialog box..."

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    .line 327
    invoke-interface {v1}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetErrorDialogTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    .line 328
    invoke-interface {v1}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetErrorDialogMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    .line 329
    invoke-interface {v1}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetErrorDialogConfirm()I

    move-result v1

    new-instance v2, Lcom/ngame/resources/ResourceDecompressActivity$3;

    invoke-direct {v2, p0}, Lcom/ngame/resources/ResourceDecompressActivity$3;-><init>(Lcom/ngame/resources/ResourceDecompressActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->errorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const-string/jumbo v0, "the error dialog box exists but is not displayed"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->errorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startUnityPlayerActivity()V
    .locals 4

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ngame/resources/ResourceDecompressActivity;->UnityPlayerActivityClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 359
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 365
    :cond_1
    invoke-static {}, Lcom/ngame/resources/RD_Path;->checkSOExists()Z

    move-result v1

    const-string v2, "Resources"

    if-eqz v1, :cond_2

    .line 367
    const-string v1, "start UnityPlayerActivity with checkSOExists=true"

    invoke-static {v2, v1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :try_start_0
    invoke-static {}, Lcom/ngame/resources/RD_Hooker;->hookNativeLibraryPath()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 371
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    iget-object v2, p0, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    const-string v3, "hookSoPath"

    invoke-virtual {v2, v3, v1}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :goto_0
    const-string v1, "SO_PATH"

    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesOutputABIPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 379
    :cond_2
    const-string v1, "start UnityPlayerActivity"

    invoke-static {v2, v1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_1
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->finish()V

    .line 382
    invoke-virtual {p0, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateProgressView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->progressBar:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, p1, 0x64

    .line 313
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->progressNum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->progressNum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected startResourceDecompresss()V
    .locals 6

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start resources decompresss with unityplayer activity exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/unity3d/player/UnityPlayerActivity;->isGameActivityLive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resources"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-boolean v0, Lcom/unity3d/player/UnityPlayerActivity;->isGameActivityLive:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->startUnityPlayerActivity()V

    .line 89
    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->finish()V

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    invoke-virtual {v0}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnAwake()V

    .line 96
    new-instance v0, Lcom/ngame/resources/ResourceDecompressActivity$1;

    invoke-virtual {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, p0}, Lcom/ngame/resources/ResourceDecompressActivity$1;-><init>(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/os/Looper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->mainHandler:Landroid/os/Handler;

    .line 182
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesInputPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ngame/resources/RD_FileHelper;->isExists(Ljava/lang/String;)Z

    move-result v0

    .line 183
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getCurResVersion()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {p0}, Lcom/ngame/util/PreferencesUtil;->getResVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isNeedExtractResources: isResourceSoExist="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", curResVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", localResVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 190
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ngame/resources/RD_FileHelper;->deleteRedundancy(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Lcom/ngame/resources/RD_FileIntegrityChecker;->CheckAllExtractorFilesCorrect(Z)Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;

    move-result-object v2

    .line 195
    iget-boolean v3, v2, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    if-nez v3, :cond_1

    .line 196
    const-string v0, "some files are not validated and will be re-extracted again."

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    const-string v3, "FileIntegrityCheck"

    invoke-virtual {v0, v3, v2}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnMD5CheckError(Ljava/lang/String;Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const-string v2, "all file are validated."

    invoke-static {v1, v2}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {p0}, Lcom/ngame/util/PreferencesUtil;->clearAllCache(Landroid/content/Context;)V

    :cond_3
    :goto_0
    const-wide/16 v2, 0xbb8

    if-eqz v0, :cond_5

    .line 212
    sget-boolean v0, Lcom/ngame/resources/ResourceDecompressActivity;->isInitExtractThread:Z

    if-nez v0, :cond_4

    .line 213
    sput-boolean v5, Lcom/ngame/resources/ResourceDecompressActivity;->isInitExtractThread:Z

    .line 214
    const-string v0, "create extract thread..."

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "res-extractor-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->extractThread:Landroid/os/HandlerThread;

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v0, Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity;->extractThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ngame/resources/ResourceDecompressActivity$2;-><init>(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->extractHandler:Landroid/os/Handler;

    goto :goto_1

    .line 294
    :cond_4
    const-string v0, "extract thread already exist. skip..."

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_1
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/ngame/resources/MainMSG;->SPLASH_TIMEOUT_WITH_EXTRACT:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->extractHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 301
    sget-object v1, Lcom/ngame/resources/ExtracterMSG;->START_EXTRACT:Lcom/ngame/resources/ExtracterMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/ExtracterMSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/ngame/resources/MainMSG;->SPLASH_TIMEOUT_WITHOUT_EXTRACT:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_2
    return-void
.end method
