.class Lcom/ihoc/mgpa/gradish/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/d1;->a(Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;

.field final synthetic b:Lcom/ihoc/mgpa/gradish/d1;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/d1;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/d1$a;->b:Lcom/ihoc/mgpa/gradish/d1;

    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/d1$a;->a:Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySystemInfo(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/d1$a;->a:Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;->notifySystemInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
