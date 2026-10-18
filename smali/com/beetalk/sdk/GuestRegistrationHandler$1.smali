.class Lcom/beetalk/sdk/GuestRegistrationHandler$1;
.super Ljava/lang/Object;
.source "GuestRegistrationHandler.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GuestRegistrationHandler;->startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

.field final synthetic val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GuestRegistrationHandler;Lcom/beetalk/sdk/data/GuestAccountRegInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultObtained(Ljava/lang/String;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;

    .line 47
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iget-object v0, v0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v1, v1, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v1, v1, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/cache/PersistentCache;->putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iget-object v1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v1, v1, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->-$$Nest$mgrantTokenForGuest(Lcom/beetalk/sdk/GuestRegistrationHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
