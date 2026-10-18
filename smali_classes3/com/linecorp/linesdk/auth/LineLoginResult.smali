.class public Lcom/linecorp/linesdk/auth/LineLoginResult;
.super Ljava/lang/Object;
.source "LineLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final errorData:Lcom/linecorp/linesdk/LineApiError;

.field private final friendshipStatusChanged:Ljava/lang/Boolean;

.field private final lineCredential:Lcom/linecorp/linesdk/LineCredential;

.field private final lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

.field private final lineProfile:Lcom/linecorp/linesdk/LineProfile;

.field private final nonce:Ljava/lang/String;

.field private final responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readEnum(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    .line 65
    const-class v0, Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineProfile;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    .line 66
    const-class v0, Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineIdToken;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    .line 67
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    .line 68
    const-class v0, Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineCredential;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    .line 69
    const-class v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/LineApiError;

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$100(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 54
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$200(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$300(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    .line 56
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$400(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    .line 57
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$500(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    .line 58
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$600(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    .line 59
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$700(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V

    return-void
.end method

.method public static authenticationAgentError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 97
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static canceledError()Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 2

    .line 101
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError;->DEFAULT:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lcom/linecorp/linesdk/LineApiResponse;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;)",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 74
    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->responseCode(Lcom/linecorp/linesdk/LineApiResponseCode;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->errorData(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->build()Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 85
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Ljava/lang/Exception;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 93
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 89
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 218
    :cond_0
    instance-of v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 219
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    .line 220
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linecorp/linesdk/LineApiError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getErrorData()Lcom/linecorp/linesdk/LineApiError;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-object v0
.end method

.method public getFriendshipStatusChanged()Ljava/lang/Boolean;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLineCredential()Lcom/linecorp/linesdk/LineCredential;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    return-object v0
.end method

.method public getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object v0
.end method

.method public getLineProfile()Lcom/linecorp/linesdk/LineProfile;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 235
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v2

    .line 238
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v3

    .line 239
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v4

    .line 240
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v5

    .line 241
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 234
    invoke-static {v7}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineLoginResult{responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lineProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineIdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friendshipStatusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineCredential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeEnum(Landroid/os/Parcel;Ljava/lang/Enum;)V

    .line 118
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
