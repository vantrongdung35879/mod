.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueueImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UrlPair"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

.field public value:Z


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;->key:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$UrlPair;->value:Z

    return-void
.end method
