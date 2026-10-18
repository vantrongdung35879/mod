.class public Lcom/intlgame/core/passkey/PassKeyManager;
.super Ljava/lang/Object;
.source "PassKeyManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final CancelledByUser:Ljava/lang/String; = "Cancelled by user"

.field public static CreateSeqId:Ljava/lang/String; = ""

.field public static CreateSessionId:Ljava/lang/String; = ""

.field public static CredentialIdForDelete:Ljava/lang/String; = ""

.field public static final GoogleCredenticalClassName:Ljava/lang/String; = "androidx.credentials.playservices.HiddenActivity"

.field public static LoginSeqId:Ljava/lang/String; = ""

.field public static LoginSessionId:Ljava/lang/String; = ""

.field public static final OneOfTheExcludedCredentialsExistOnTheLocalDevice:Ljava/lang/String; = "One of the excluded credentials exists on the local device"

.field public static PassKeyManagerWorking:Z = false

.field public static final RegisterAnAuthenticatorContainsAlreadyRegisteredRelyingParty:Ljava/lang/String; = "The user attempted to register an authenticator that contains one of the credentials already registered with the relying party"

.field public static cancellationCreatePassKeySignal:Landroid/os/CancellationSignal;

.field public static cancellationLoginPassKeySignal:Landroid/os/CancellationSignal;

.field public static createPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

.field public static credentialManager:Landroidx/credentials/CredentialManager;

.field public static eventID:I

.field public static loginPassKeyExecutors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "PassKeyManager initialize start"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->configPassKey()V

    return-void
.end method

.method private checkGooglePlayServicesAvailable()I
    .locals 3

    .line 142
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 146
    :cond_0
    const-string v0, "Google Play Services check skipped: Activity is null"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x9

    :goto_0
    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Play Services not available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private formatThirdMsg(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public configPassKey()V
    .locals 2

    .line 90
    sget-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->credentialManager:Landroidx/credentials/CredentialManager;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Landroidx/credentials/CredentialManager;->Companion:Landroidx/credentials/CredentialManager$Companion;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/credentials/CredentialManager$Companion;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->credentialManager:Landroidx/credentials/CredentialManager;

    .line 94
    :cond_0
    sget-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->cancellationLoginPassKeySignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    sput-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->cancellationLoginPassKeySignal:Landroid/os/CancellationSignal;

    .line 96
    new-instance v1, Lcom/intlgame/core/passkey/PassKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/intlgame/core/passkey/PassKeyManager$$ExternalSyntheticLambda0;-><init>(Lcom/intlgame/core/passkey/PassKeyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 100
    :cond_1
    sget-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->cancellationCreatePassKeySignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    sput-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->cancellationCreatePassKeySignal:Landroid/os/CancellationSignal;

    .line 102
    new-instance v1, Lcom/intlgame/core/passkey/PassKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/intlgame/core/passkey/PassKeyManager$$ExternalSyntheticLambda1;-><init>(Lcom/intlgame/core/passkey/PassKeyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 107
    :cond_2
    sget-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->createPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    .line 108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->createPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

    .line 111
    :cond_3
    sget-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->loginPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->loginPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

    :cond_4
    const/4 v0, 0x0

    .line 115
    sput v0, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 116
    sput-boolean v0, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    .line 118
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_5
    return-void
.end method

.method public createPassKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PassKey] createPassKey reg_rsp = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seq_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 392
    sput-object p3, Lcom/intlgame/core/passkey/PassKeyManager;->CreateSeqId:Ljava/lang/String;

    .line 393
    sput-object p2, Lcom/intlgame/core/passkey/PassKeyManager;->CreateSessionId:Ljava/lang/String;

    .line 395
    new-instance v3, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    invoke-direct {v3, p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 404
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 405
    sput-boolean p1, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    .line 410
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->credentialManager:Landroidx/credentials/CredentialManager;

    .line 413
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Lcom/intlgame/core/passkey/PassKeyManager;->cancellationCreatePassKeySignal:Landroid/os/CancellationSignal;

    sget-object v5, Lcom/intlgame/core/passkey/PassKeyManager;->createPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/intlgame/core/passkey/PassKeyManager$2;

    invoke-direct {v6, p0}, Lcom/intlgame/core/passkey/PassKeyManager$2;-><init>(Lcom/intlgame/core/passkey/PassKeyManager;)V

    .line 410
    invoke-interface/range {v1 .. v6}, Landroidx/credentials/CredentialManager;->createCredentialAsync(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public handleCreateCancel()V
    .locals 3

    .line 310
    const-string v0, "[PassKey] handleCreateCancel"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;

    invoke-direct {v0}, Lcom/intlgame/api/passkey/INTLPassKeyResult;-><init>()V

    const/16 v1, 0x966

    .line 313
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->method_id_:I

    const/4 v1, 0x2

    .line 314
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->ret_code_:I

    const/16 v1, 0x2769

    .line 315
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    const/16 v1, 0x9c9

    .line 316
    sget-object v2, Lcom/intlgame/core/passkey/PassKeyManager;->CreateSeqId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public handleCreateFailure(Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PassKey] handleCreateFail Unexpected exception type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/credentials/exceptions/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;

    invoke-direct {v0}, Lcom/intlgame/api/passkey/INTLPassKeyResult;-><init>()V

    const/16 v1, 0x966

    .line 345
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->method_id_:I

    const/4 v1, 0x3

    .line 346
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->ret_code_:I

    .line 347
    invoke-direct {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->formatThirdMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_msg_:Ljava/lang/String;

    const/16 v1, 0x2769

    .line 348
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    .line 350
    instance-of v1, p1, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {p1}, Landroidx/credentials/exceptions/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 352
    const-string v1, "One of the excluded credentials exists on the local device"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The user attempted to register an authenticator that contains one of the credentials already registered with the relying party"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x2768

    .line 353
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    :cond_1
    if-eqz p1, :cond_8

    .line 355
    const-string v1, "Cancelled by user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 356
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateCancel()V

    return-void

    .line 363
    :cond_2
    instance-of v1, p1, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    if-eqz v1, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateCancel()V

    return-void

    .line 368
    :cond_3
    instance-of v1, p1, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 370
    :cond_4
    instance-of v1, p1, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;

    if-nez v1, :cond_7

    instance-of v1, p1, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 375
    :cond_5
    instance-of v1, p1, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    if-eqz v1, :cond_6

    goto :goto_1

    .line 377
    :cond_6
    instance-of p1, p1, Landroidx/credentials/exceptions/CreateCredentialCustomException;

    goto :goto_1

    :cond_7
    :goto_0
    const/16 p1, 0x2767

    .line 374
    iput p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    :cond_8
    :goto_1
    const/16 p1, 0x9c9

    .line 387
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->CreateSeqId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public handleCreateSuccess(Landroidx/credentials/CreateCredentialResponse;)V
    .locals 2

    .line 320
    const-string v0, "[PassKey] handleCreateSuccess"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 322
    instance-of v0, p1, Landroidx/credentials/CreatePublicKeyCredentialResponse;

    if-eqz v0, :cond_0

    .line 323
    check-cast p1, Landroidx/credentials/CreatePublicKeyCredentialResponse;

    invoke-virtual {p1}, Landroidx/credentials/CreatePublicKeyCredentialResponse;->getRegistrationResponseJson()Ljava/lang/String;

    move-result-object p1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PassKey] createPassKey CreatePublicKeyCredentialResponse responseJson = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;

    invoke-direct {v0}, Lcom/intlgame/api/passkey/INTLPassKeyResult;-><init>()V

    const/16 v1, 0x966

    .line 328
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->method_id_:I

    const/4 v1, 0x0

    .line 329
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->ret_code_:I

    .line 330
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    .line 331
    iput-object p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->response_json_:Ljava/lang/String;

    .line 332
    sget-object p1, Lcom/intlgame/core/passkey/PassKeyManager;->CreateSessionId:Ljava/lang/String;

    iput-object p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->session_id_:Ljava/lang/String;

    const/16 p1, 0x9c9

    .line 333
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->CreateSeqId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    invoke-direct {p1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>()V

    .line 337
    invoke-virtual {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateFailure(Landroidx/credentials/exceptions/CreateCredentialException;)V

    :goto_0
    return-void
.end method

.method public handleSignInCancel()V
    .locals 3

    .line 276
    const-string v0, "[PassKey] handleSignInCancel"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;

    invoke-direct {v0}, Lcom/intlgame/api/passkey/INTLPassKeyResult;-><init>()V

    .line 279
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->CredentialIdForDelete:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x968

    goto :goto_0

    :cond_0
    const/16 v1, 0x967

    :goto_0
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->method_id_:I

    const/4 v1, 0x2

    .line 280
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->ret_code_:I

    const/16 v1, 0x2769

    .line 281
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    const/16 v1, 0x9ca

    .line 282
    sget-object v2, Lcom/intlgame/core/passkey/PassKeyManager;->LoginSeqId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public handleSignInFailure(Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PassKey] handleSignInFailure Unexpected exception type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;

    invoke-direct {v0}, Lcom/intlgame/api/passkey/INTLPassKeyResult;-><init>()V

    .line 240
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->CredentialIdForDelete:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x968

    goto :goto_0

    :cond_0
    const/16 v1, 0x967

    :goto_0
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->method_id_:I

    const/4 v1, 0x3

    .line 241
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->ret_code_:I

    .line 242
    invoke-direct {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->formatThirdMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_msg_:Ljava/lang/String;

    const/16 v1, 0x2769

    .line 243
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    .line 245
    instance-of v1, p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleSignInCancel()V

    return-void

    .line 250
    :cond_1
    instance-of v1, p1, Landroidx/credentials/exceptions/GetCredentialInterruptedException;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 252
    :cond_2
    instance-of v1, p1, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    if-nez v1, :cond_6

    instance-of v1, p1, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 257
    :cond_3
    instance-of v1, p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 259
    :cond_4
    instance-of v1, p1, Landroidx/credentials/exceptions/GetCredentialCustomException;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 267
    :cond_5
    instance-of p1, p1, Landroidx/credentials/exceptions/NoCredentialException;

    if-eqz p1, :cond_7

    const/16 p1, 0x276a

    .line 268
    iput p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    goto :goto_2

    :cond_6
    :goto_1
    const/16 p1, 0x2767

    .line 256
    iput p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    :cond_7
    :goto_2
    const/16 p1, 0x9ca

    .line 271
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->LoginSeqId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public handleSignInSuccess(Landroidx/credentials/GetCredentialResponse;)V
    .locals 2

    .line 287
    const-string v0, "[PassKey] handleSignInSuccess"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object p1

    .line 290
    instance-of v0, p1, Landroidx/credentials/PublicKeyCredential;

    if-eqz v0, :cond_1

    .line 291
    check-cast p1, Landroidx/credentials/PublicKeyCredential;

    invoke-virtual {p1}, Landroidx/credentials/PublicKeyCredential;->getAuthenticationResponseJson()Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PassKey] loginPassKey PublicKeyCredential responseJson = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;

    invoke-direct {v0}, Lcom/intlgame/api/passkey/INTLPassKeyResult;-><init>()V

    .line 296
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->CredentialIdForDelete:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x968

    goto :goto_0

    :cond_0
    const/16 v1, 0x967

    :goto_0
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->method_id_:I

    const/4 v1, 0x0

    .line 297
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->ret_code_:I

    .line 298
    iput v1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->third_code_:I

    .line 299
    iput-object p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->response_json_:Ljava/lang/String;

    .line 300
    sget-object p1, Lcom/intlgame/core/passkey/PassKeyManager;->LoginSessionId:Ljava/lang/String;

    iput-object p1, v0, Lcom/intlgame/api/passkey/INTLPassKeyResult;->session_id_:Ljava/lang/String;

    const/16 p1, 0x9ca

    .line 301
    sget-object v1, Lcom/intlgame/core/passkey/PassKeyManager;->LoginSeqId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_1
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-direct {p1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>()V

    .line 305
    invoke-virtual {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->handleSignInFailure(Landroidx/credentials/exceptions/GetCredentialException;)V

    :goto_1
    return-void
.end method

.method public isPassKeyAvailable()Z
    .locals 6

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->checkGooglePlayServicesAvailable()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 131
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[PassKey] isSystemVersionSupports="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isGooglePlayServicesAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method synthetic lambda$configPassKey$0$com-intlgame-core-passkey-PassKeyManager()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleSignInCancel()V

    return-void
.end method

.method synthetic lambda$configPassKey$1$com-intlgame-core-passkey-PassKeyManager()V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateCancel()V

    return-void
.end method

.method public loginPassKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "[PassKey] loginPassKey after add credential_id login_rsp = "

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PassKey] loginPassKey login_rsp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", session_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", credential_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", seq_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 158
    sput-object p4, Lcom/intlgame/core/passkey/PassKeyManager;->LoginSeqId:Ljava/lang/String;

    .line 159
    sput-object p3, Lcom/intlgame/core/passkey/PassKeyManager;->CredentialIdForDelete:Ljava/lang/String;

    .line 160
    sput-object p2, Lcom/intlgame/core/passkey/PassKeyManager;->LoginSessionId:Ljava/lang/String;

    .line 162
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_0

    .line 165
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 168
    const-string v4, "id"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string/jumbo v4, "type"

    const-string v5, "public-key"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 172
    const-string v5, "internal"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    const-string v5, "hybrid"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 175
    const-string/jumbo v5, "transports"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 178
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    const-string v1, "allowCredentials"

    invoke-virtual {p4, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 184
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[PassKey] credential_id add into login_rsp fail message = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    new-instance p2, Landroidx/credentials/GetPublicKeyCredentialOption;

    invoke-direct {p2, p1}, Landroidx/credentials/GetPublicKeyCredentialOption;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance p1, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {p1}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    .line 201
    invoke-virtual {p1, p2}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 202
    invoke-virtual {p1, p2}, Landroidx/credentials/GetCredentialRequest$Builder;->setPreferImmediatelyAvailableCredentials(Z)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v2

    const/4 p1, 0x2

    .line 205
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 206
    sput-boolean p2, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    .line 208
    sget-object v0, Lcom/intlgame/core/passkey/PassKeyManager;->credentialManager:Landroidx/credentials/CredentialManager;

    .line 211
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/intlgame/core/passkey/PassKeyManager;->cancellationLoginPassKeySignal:Landroid/os/CancellationSignal;

    sget-object v4, Lcom/intlgame/core/passkey/PassKeyManager;->loginPassKeyExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/intlgame/core/passkey/PassKeyManager$1;

    invoke-direct {v5, p0}, Lcom/intlgame/core/passkey/PassKeyManager$1;-><init>(Lcom/intlgame/core/passkey/PassKeyManager;)V

    .line 208
    invoke-interface/range {v0 .. v5}, Landroidx/credentials/CredentialManager;->getCredentialAsync(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 439
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PassKeyManager onActivityCreated activity = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassKeyManager onActivityDestroyed activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 472
    sget-boolean v0, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "androidx.credentials.playservices.HiddenActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 475
    const-string p1, "PassKeyManager onActivityDestroyed come here"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 477
    sget p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateCancel()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/intlgame/core/passkey/PassKeyManager;->handleSignInCancel()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 482
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 483
    sput-boolean p1, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    :cond_2
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassKeyManager onActivityPaused activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassKeyManager onActivityResumed activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 464
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PassKeyManager onActivitySaveInstanceState activity = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassKeyManager onActivityStarted activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassKeyManager onActivityStopped activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method
