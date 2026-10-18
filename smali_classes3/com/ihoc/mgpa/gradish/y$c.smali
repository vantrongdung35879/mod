.class Lcom/ihoc/mgpa/gradish/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/y;->a(Landroid/content/Context;Lcom/ihoc/mgpa/gradish/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/i0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/y$c;->a:Lcom/ihoc/mgpa/gradish/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->field(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/y$c;->a:Lcom/ihoc/mgpa/gradish/i0;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/i0;->a(ILjava/lang/String;)V

    return-void
.end method
