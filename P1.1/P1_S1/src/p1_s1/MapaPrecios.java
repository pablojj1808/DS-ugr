
package p1_s1;

import java.util.Observable;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class MapaPrecios extends Componente {

    private static double precioCanarias;
    private static double precioPeninsular;
    private static double precioFrancia;
    private static double precioPortugal;
    
    private static boolean mostrarTodos;
    
    private static final double IGIC = 7; // 7%
    private static final double IVA = 21; // 21%
    private static final double IVAPORT = 23; // 23%
    private static final double IVAFRANC = 4.5; // 4.5%
    
    public MapaPrecios() {
        initComponents();
        this.setVisible(true);
        this.labelPrecioPeninsula.setText("");
        this.labelPrecioCanarias.setText("");
        this.labelPrecioFrancia.setText("");
        this.labelPrecioPortugal.setText("");
        this.precioOriginal.setText("");
        
        labelPrecioFrancia.setVisible(false);
        labelPrecioPeninsula.setVisible(false);
        labelPrecioPortugal.setVisible(false);
        labelPrecioCanarias.setVisible(false);
        
        mostrarTodos = false;
    }
    
    @Override
    public void update(Observable o, Object arg) {
       double p = (double) arg;
        
        precioCanarias = p + (p*IGIC/100.0);
        precioPeninsular = p + (p*IVA/100.0); 
        precioFrancia = p + (p*IVAFRANC/100.0);        
        precioPortugal = p + (p*IVAPORT/100.0);
        
        precioOriginal.setText(Double.toString( (double) p ) + " €");
        
        labelPrecioFrancia.setText(Double.toString(precioFrancia));
        labelPrecioPeninsula.setText(Double.toString(precioPeninsular));
        labelPrecioPortugal.setText(Double.toString(precioPeninsular));
        labelPrecioCanarias.setText(Double.toString(precioCanarias));
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        labelPrecioFrancia = new javax.swing.JLabel();
        labelPrecioPeninsula = new javax.swing.JLabel();
        titulo2 = new javax.swing.JLabel();
        precioOriginal = new javax.swing.JLabel();
        boton = new javax.swing.JButton();
        pinPortugal = new javax.swing.JLabel();
        pinFrancia = new javax.swing.JLabel();
        pinPeninsula = new javax.swing.JLabel();
        pinCanarias = new javax.swing.JLabel();
        labelPrecioCanarias = new javax.swing.JLabel();
        labelPrecioPortugal = new javax.swing.JLabel();
        fondo = new javax.swing.JLabel();
        titulo = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();

        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        labelPrecioFrancia.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioFrancia.setText("jLabel7");
        labelPrecioFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        add(labelPrecioFrancia, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 210, 70, 30));

        labelPrecioPeninsula.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioPeninsula.setForeground(new java.awt.Color(255, 255, 255));
        labelPrecioPeninsula.setText("jLabel5");
        add(labelPrecioPeninsula, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 400, 130, 30));

        titulo2.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        titulo2.setText("Precios con IVA por países : ");
        add(titulo2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, -1, 50));

        precioOriginal.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        precioOriginal.setText("jLabel2");
        add(precioOriginal, new org.netbeans.lib.awtextra.AbsoluteConstraints(273, 10, 230, 20));

        boton.setBackground(new java.awt.Color(200, 22, 22));
        boton.setText("Ver todos los precios");
        boton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonActionPerformed(evt);
            }
        });
        add(boton, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 520, 160, 30));

        pinPortugal.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinPortugal.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinPortugal.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinPortugal.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinPortugalMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinPortugalMouseExited(evt);
            }
        });
        add(pinPortugal, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 330, 50, 90));

        pinFrancia.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinFrancia.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinFrancia.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinFrancia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinFranciaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinFranciaMouseExited(evt);
            }
        });
        add(pinFrancia, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 120, 50, 90));

        pinPeninsula.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinPeninsula.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinPeninsula.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinPeninsula.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinPeninsula.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinPeninsulaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinPeninsulaMouseExited(evt);
            }
        });
        add(pinPeninsula, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 310, 50, 90));

        pinCanarias.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinCanarias.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinCanarias.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinCanarias.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinCanarias.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinCanariasMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinCanariasMouseExited(evt);
            }
        });
        add(pinCanarias, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 450, 50, 90));

        labelPrecioCanarias.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioCanarias.setText("jLabel6");
        add(labelPrecioCanarias, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 550, 100, 20));

        labelPrecioPortugal.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioPortugal.setText("jLabel8");
        labelPrecioPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        add(labelPrecioPortugal, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 400, 100, 30));

        fondo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        fondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/mapa.png"))); // NOI18N
        add(fondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 50, 547, 527));

        titulo.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        titulo.setText("Precio sin IVA = ");
        add(titulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(107, 0, 160, 40));
        add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 40, 540, 10));
    }// </editor-fold>//GEN-END:initComponents

    private void botonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonActionPerformed
        // TODO add your handling code here:
        if(mostrarTodos){
            labelPrecioFrancia.setVisible(false);
            labelPrecioPeninsula.setVisible(false);
            labelPrecioPortugal.setVisible(false);
            labelPrecioCanarias.setVisible(false);
            mostrarTodos = false;
            boton.setBackground(new java.awt.Color(200, 22, 22));
        }
        else{
            labelPrecioFrancia.setVisible(true);
            labelPrecioPeninsula.setVisible(true);
            labelPrecioPortugal.setVisible(true);
            labelPrecioCanarias.setVisible(true);
            mostrarTodos=true;
            boton.setBackground(new java.awt.Color(57, 178, 84));
        }
    }//GEN-LAST:event_botonActionPerformed

    private void pinFranciaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinFranciaMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioFrancia.setVisible(true);
            pinFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        }

    }//GEN-LAST:event_pinFranciaMouseEntered

    private void pinFranciaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinFranciaMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioFrancia.setVisible(false);
            pinFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        }

    }//GEN-LAST:event_pinFranciaMouseExited

    private void pinCanariasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinCanariasMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinCanarias.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
            labelPrecioCanarias.setVisible(true);
        }

    }//GEN-LAST:event_pinCanariasMouseEntered

    private void pinCanariasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinCanariasMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinCanarias.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
            labelPrecioCanarias.setVisible(false);
        }

    }//GEN-LAST:event_pinCanariasMouseExited

    private void pinPortugalMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPortugalMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
            labelPrecioPortugal.setVisible(true);
        }

    }//GEN-LAST:event_pinPortugalMouseEntered

    private void pinPortugalMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPortugalMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
            labelPrecioPortugal.setVisible(false);
        }

    }//GEN-LAST:event_pinPortugalMouseExited

    private void pinPeninsulaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPeninsulaMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioPeninsula.setVisible(true);
            pinPeninsula.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        }

    }//GEN-LAST:event_pinPeninsulaMouseEntered

    private void pinPeninsulaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPeninsulaMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioPeninsula.setVisible(false);
            pinPeninsula.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        }

    }//GEN-LAST:event_pinPeninsulaMouseExited


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton boton;
    private javax.swing.JLabel fondo;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel labelPrecioCanarias;
    private javax.swing.JLabel labelPrecioFrancia;
    private javax.swing.JLabel labelPrecioPeninsula;
    private javax.swing.JLabel labelPrecioPortugal;
    private javax.swing.JLabel pinCanarias;
    private javax.swing.JLabel pinFrancia;
    private javax.swing.JLabel pinPeninsula;
    private javax.swing.JLabel pinPortugal;
    private javax.swing.JLabel precioOriginal;
    private javax.swing.JLabel titulo;
    private javax.swing.JLabel titulo2;
    // End of variables declaration//GEN-END:variables

    @Override
    public void operacion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
