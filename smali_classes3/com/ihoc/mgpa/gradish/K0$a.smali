.class Lcom/ihoc/mgpa/gradish/K0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/gradish/K0$b;Lcom/ihoc/mgpa/gradish/K0$b;)I
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/J0;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/J0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ihoc/mgpa/gradish/K0$a;->a(Lcom/ihoc/mgpa/gradish/K0$b;Lcom/ihoc/mgpa/gradish/K0$b;)I

    move-result p1

    return p1
.end method
