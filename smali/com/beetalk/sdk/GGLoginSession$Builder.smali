.class public final Lcom/beetalk/sdk/GGLoginSession$Builder;
.super Ljava/lang/Object;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGLoginSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private applicationKey:Ljava/lang/String;

.field private cache:Lcom/beetalk/sdk/cache/StorageCache;

.field private final context:Landroid/content/Context;

.field private modes:Lcom/beetalk/sdk/AuthMode;

.field private requestCode:I

.field private sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1112
    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    const v0, 0xdb9d

    .line 1113
    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    .line 1114
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1121
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1112
    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    const v0, 0xdb9d

    .line 1113
    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    .line 1114
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1117
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/GGLoginSession;
    .locals 10

    .line 1150
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    if-nez v0, :cond_0

    .line 1152
    iget v1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1154
    :pswitch_0
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForSwap()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/StorageCache;->clearSession()V

    goto :goto_0

    .line 1158
    :pswitch_1
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForPlatformBind()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v0

    goto :goto_0

    .line 1161
    :pswitch_2
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForGuestBind()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v8, v0

    .line 1165
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->modes:Lcom/beetalk/sdk/AuthMode;

    iget v6, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    iget-object v7, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/beetalk/sdk/GGLoginSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;Lcom/beetalk/sdk/GGLoginSession-IA;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xdbec
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->modes:Lcom/beetalk/sdk/AuthMode;

    return-object p0
.end method

.method public setCache(Lcom/beetalk/sdk/cache/StorageCache;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    .line 1175
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    return-object p0
.end method

.method public setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    .line 1145
    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    return-object p0
.end method

.method public setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0
.end method
