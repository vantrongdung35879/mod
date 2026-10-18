.class final Lcom/gcloudsdk/apollo/WSSocketPool$UnsafeX509TrustManager;
.super Ljava/lang/Object;
.source "WSSocketPool.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/WSSocketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsafeX509TrustManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcloudsdk/apollo/WSSocketPool;


# direct methods
.method private constructor <init>(Lcom/gcloudsdk/apollo/WSSocketPool;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/gcloudsdk/apollo/WSSocketPool$UnsafeX509TrustManager;->this$0:Lcom/gcloudsdk/apollo/WSSocketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gcloudsdk/apollo/WSSocketPool;Lcom/gcloudsdk/apollo/WSSocketPool$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/gcloudsdk/apollo/WSSocketPool$UnsafeX509TrustManager;-><init>(Lcom/gcloudsdk/apollo/WSSocketPool;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
